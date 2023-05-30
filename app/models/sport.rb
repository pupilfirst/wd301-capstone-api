class Sport < ApplicationRecord
  has_many :teams, dependent: :destroy
  has_many :articles
  enum sport_type: %i[basketball rugby table_tennis football hockey cricket]
end
