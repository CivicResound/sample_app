class AddFormInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :school_affliation, :string
    add_column :users, :education_level, :string

	add_column :users, :accounting, :boolean
	add_column :users, :admin_support, :boolean
	add_column :users, :advertising, :boolean
	add_column :users, :agriculture, :boolean
	add_column :users, :architecture, :boolean
	add_column :users, :banking, :boolean
	add_column :users, :chemistry, :boolean
	add_column :users, :communications, :boolean
	add_column :users, :construction, :boolean
	add_column :users, :consulting, :boolean
	add_column :users, :customer_service, :boolean
	add_column :users, :education, :boolean
	add_column :users, :engineering, :boolean
	add_column :users, :environmental, :boolean
	add_column :users, :finance, :boolean
	add_column :users, :food_beverage, :boolean
	add_column :users, :foreign_language, :boolean
	add_column :users, :fundraising, :boolean
	add_column :users, :government, :boolean
	add_column :users, :graphic_design, :boolean
	add_column :users, :healthcare, :boolean
	add_column :users, :hospitality, :boolean
	add_column :users, :human_resources, :boolean
	add_column :users, :information_tech, :boolean
	add_column :users, :international_relations, :boolean
	add_column :users, :investment_banking, :boolean
	add_column :users, :journalism, :boolean
	add_column :users, :legal, :boolean
	add_column :users, :logistics, :boolean
	add_column :users, :management, :boolean
	add_column :users, :marketing, :boolean
	add_column :users, :manufacturing, :boolean
	add_column :users, :merchandising, :boolean
	add_column :users, :non_profit, :boolean
	add_column :users, :nutrition, :boolean
	add_column :users, :operations, :boolean
	add_column :users, :performing_arts, :boolean
	add_column :users, :pharmaceuticals, :boolean
	add_column :users, :physics, :boolean
	add_column :users, :public_relations, :boolean
	add_column :users, :real_estate, :boolean
	add_column :users, :sales, :boolean
	add_column :users, :social_services, :boolean
	add_column :users, :transportation, :boolean


    add_column :users, :job_level, :string
  end
end
