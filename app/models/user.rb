class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :dishs, dependent: :destroy
  has_many :favorites, dependent: :destroy
  attachment :profile_image
  validates_length_of :email, maximum:255
end
