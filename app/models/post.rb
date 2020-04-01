class Post < ApplicationRecord

  validates :title, presence: true
  validates :image_url, presence: true
  validates :content, presence: true
  scope :order_by_date, -> {order(created_at: :desc)} 
end
