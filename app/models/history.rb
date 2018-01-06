class History < ApplicationRecord
  validates :word, presence: true
  validates :name, presence: true
  validates :examination, presence: true
end
