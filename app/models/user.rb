class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items
  has_many :purchases
  
  VALID_PASSWORD_REGEX = /\A[a-zA-Z0-9]+\z/.freeze

  with_options presence: true do
    validates :email
    validates :password, format: { with: VALID_PASSWORD_REGEX }
    validates :name
  end
end
