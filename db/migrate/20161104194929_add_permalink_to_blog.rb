class AddPermalinkToBlog < ActiveRecord::Migration
  def self.up
    add_column :blogs, :permalink, :string
    add_index :blogs, :permalink
  end
  def self.down
    remove_column :blogs, :permalink
  end
end