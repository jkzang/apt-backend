class User < ApplicationRecord
  rolify
  has_many :apartments

  validates :email, :name, :password, presence: true
  has_secure_password

  after_create :assign_role
  def assign_role
    add_role(:user)
  end
end
