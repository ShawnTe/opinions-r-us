class User < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  has_many :questions, foreign_key: :author_id
  has_many :comments, foreign_key: :author_id
  has_many :answers, foreign_key: :author_id
  has_many :votes

  has_secure_password

end


  
