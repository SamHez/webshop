class CreateBlogs < ActiveRecord::Migration
  def up
    create_table :blogs do |t|
      t.text :content
      t.string :author

      t.timestamps null: false
    end
  end
  def down
    remove_column :blogs, :content
    add_column  :blogs, :blog_content, :text
    remove_column :blogs, :author

  end
end
