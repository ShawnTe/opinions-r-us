class User < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  has_many :questions
  has_many :comments
  has_many :answers
  has_many :votes

  has_secure_password

end
