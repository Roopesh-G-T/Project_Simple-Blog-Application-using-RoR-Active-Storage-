class ChangeTables < ActiveRecord::Migration[6.1]
  def change
    add_column :blog_posts,:author, :string
    add_column :blog_posts,:genre, :string
  end
end
