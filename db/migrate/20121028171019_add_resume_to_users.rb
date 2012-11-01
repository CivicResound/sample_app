class AddResumeToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :resume_file_name, :string
  	add_column :users, :resume_content_type, :string
  	add_column :users, :resume_file_size, :integer
  	add_column :users, :attachment_updated_at, :datetime
  end
end
