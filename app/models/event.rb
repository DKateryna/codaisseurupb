class Event < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :price, length: { minimum: 0 }
  validates :includes_food, presence: false
  validates :includes_drinks, presence: false
  validates :active, presence: true
  validates :description, presence: true, length: { maximum: 500 }


  has_many :photos

end
