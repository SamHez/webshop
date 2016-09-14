class AddIndexToNewsletters < ActiveRecord::Migration
  def change
    add_index :newsletters, :email
  end
end
