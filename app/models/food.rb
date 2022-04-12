class Food < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than: 0.01}

  has_one :category

  def self.by_letter(letter)
    where("name LIKE ?", "#{letter}%").order(:name)
  end
end
