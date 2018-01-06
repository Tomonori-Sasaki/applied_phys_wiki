class History < ApplicationRecord
  validates :word, presence: true
  validates :word, length: { maximum: 15 }
  validates :name, presence: true
  validates :examination, presence: true
end
