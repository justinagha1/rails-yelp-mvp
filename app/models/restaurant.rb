class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, presence: true
  VALID_CATEGORIES = %w[chinese italian japanese french belgian];
  validates :category, presence: true, inclusion: { in: VALID_CATEGORIES }
end
