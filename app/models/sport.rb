class Sport < ApplicationRecord
  has_many :teams, dependent: :destroy

  enum sport_type: %i[basketball rugby table_tennis football hockey cricket]
end
