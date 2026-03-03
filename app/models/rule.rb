class Rule < ApplicationRecord
  belongs_to :ideathon, foreign_key: :year

  validates :rule_text, presence: true
  validates :year, presence: true
end
