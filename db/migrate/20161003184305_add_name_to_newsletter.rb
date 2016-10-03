class AddNameToNewsletter < ActiveRecord::Migration
  def change
    add_column :newsletters, :name, :string
  end
end
