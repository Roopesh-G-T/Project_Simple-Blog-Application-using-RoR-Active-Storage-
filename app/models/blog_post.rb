class BlogPost < ApplicationRecord
    # has_one_attached :header_image
    has_many_attached :files

    before_save :merge_names
    after_destroy :update_log

    def merge_names
        self.title = self.title + " written by " + self.author
    end

    def update_log
        logger.info "==========Alas! a blog record has been deleted with name #{self.title}==========" 
    end
end
