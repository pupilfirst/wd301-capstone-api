class Match < ApplicationRecord
  has_and_belongs_to_many :teams

  enum status: %i[running ended]
end
