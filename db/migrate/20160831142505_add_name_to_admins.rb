class AddNameToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :name, :string, after: :id

  end
end
