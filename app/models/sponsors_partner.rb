class SponsorsPartner < ApplicationRecord
  belongs_to :ideathon, foreign_key: :year

  validates :name, presence: true
  validates :year, presence: true
end
