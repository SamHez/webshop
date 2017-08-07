class AddCreatedAtToBlogs < ActiveRecord::Migration
  def up
    add_column :blogs,  :created_at, :datetime
    add_column :blogs, :updated_at, :datetime
  end
  def down
    remove_column :blogs, :created_at, :datetime
    remove_column  :blogs, :updated_at, :datetime
  end
end
