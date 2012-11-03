class User < ActiveRecord::Base
  attr_accessible :admin, :email, :name, :password, :password_confirmation, :document,
                  :school_affliation, :education_level, :job_interest_type, 
                  :job_level, :accounting, :admin_support, :advertising, :agriculture,
                  :architecture, :banking, :chemistry, :communications, :construction,
                  :consulting, :customer_service, :education, :engineering,
                  :environmental, :finance, :food_beverage, :foreign_language, 
                  :fundraising, :government, :graphic_design, :healthcare, :hospitality,
                  :human_resources, :information_tech, :international_relations,
                  :investment_banking, :journalism, :legal, :logistics, :management,
                  :marketing, :manufacturing, :merchandising, :non_profit, :nutrition,
                  :operations, :performing_arts, :pharmaceuticals, :physics, 
                  :public_relations, :real_estate, :sales, :social_services,
                  :transportation

  has_secure_password
  has_many :microposts, dependent: :destroy
  has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_users, through: :relationships, source: :followed
  has_many :reverse_relationships, foreign_key: "followed_id", 
                                   class_name: "Relationship",
                                   dependent: :destroy
  has_many :followers, through: :reverse_relationships, source: :follower                                
  
  
  #validates_attachment_content_type :document, :content_type => 'application/pdf'
  #validates :document_content_type, presence: true

  before_save { |user| user.email = user.email.downcase }
  before_save :create_remember_token

  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
   					uniqueness: { case_sensitive: false }

  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  mount_uploader :document, DocumentUploader

  UNRANSACKABLE_ATTRIBUTES = ["email", "password", "password_confirmation", "resume",
                              "job_interest_type", "id", "document_file_size", "document_content_type",
                              "remember_token", "admin", "document_file_name", "created_at", "updated_at",
                              "attachment_updated_at"]

  def self.ransackable_attributes auth_object = nil
    (column_names - UNRANSACKABLE_ATTRIBUTES) + _ransackers.keys
  end 

  def following?(other_user)
    relationships.find_by_followed_id(other_user.id)
  end

  def follow!(other_user)
    relationships.create!(followed_id: other_user.id)
  end

  def unfollow!(other_user)
    relationships.find_by_followed_id(other_user.id).destroy
  end

  def feed
    # This is only a proto-feed
    Micropost.from_users_followed_by(self)
  end

  # def feed
  #   # This is only a proto-feed
  #   Micropost.from_users_followed_by(self)
  # end

  def greaterthans
    self.where("admin = ?", true).paginate(page: params[:page])
  end

  private 

	  def create_remember_token
	  	self.remember_token = SecureRandom.urlsafe_base64
	  end
end
