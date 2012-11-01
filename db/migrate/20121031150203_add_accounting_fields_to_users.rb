class AddAccountingFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :accounting, :boolean
  end
end
