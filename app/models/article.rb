class Article < ApplicationRecord
  belongs_to :sport
  has_and_belongs_to_many :teams
end
