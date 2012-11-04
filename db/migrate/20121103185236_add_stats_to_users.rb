class AddStatsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :degree_progress, :string
  	add_column :users, :activities, :string
  	add_column :users, :skills, :string
  	add_column :users, :employment_history, :text
  	add_column :users, :address, :string
  	add_column :users, :phone_number, :string
  end
end
