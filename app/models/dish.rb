class Dish < ApplicationRecord
  belongs_to :user
  
  attachment :image
  has_many :favorites, dependent: :destroy
  
  validates :image, presence: true
  validates :dish_name, presence: true
  validates :material, presence: true
  validates :process, presence: true
  
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
