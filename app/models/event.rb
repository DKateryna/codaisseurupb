class Event < ApplicationRecord
  belongs_to :user, optional: true
  has_many :photos, dependent: :destroy
  has_and_belongs_to_many :categories

  validates :name, presence: true
  validates :price, length: { minimum: 0 }
  validates :includes_food, presence: false
  validates :includes_drinks, presence: false
  validates :active, presence: true
  validates :description, presence: true, length: { maximum: 500 }

  has_many :photos
  def bargain?
    price < 30
  end

  def self.order_by_price
    order :price
  end
end
