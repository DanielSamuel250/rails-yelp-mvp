class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: CATEGORY }
  validates :name, :address, presence: true
end
