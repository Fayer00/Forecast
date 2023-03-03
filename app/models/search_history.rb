class SearchHistory < ApplicationRecord
  belongs_to :user

  validates :city, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :temp_c, presence: true
  validates :temp_f, presence: true

  scope :by_recently_created, -> { order(created_at: :desc) }
end