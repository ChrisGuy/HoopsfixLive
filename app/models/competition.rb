class Competition < ApplicationRecord
  belongs_to :organisation
  #belongs_to :season
  has_many :clubs, through: :seasons
  has_many :games, through: :season
  has_many :season_records
  has_many :seasons, through: :season_records
  has_one_attached :logo
  extend FriendlyId
  friendly_id :name, use: :slugged
end
