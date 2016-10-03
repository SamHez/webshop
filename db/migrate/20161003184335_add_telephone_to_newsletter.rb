class AddTelephoneToNewsletter < ActiveRecord::Migration
  def change
    add_column :newsletters, :telephone, :string
  end
end
