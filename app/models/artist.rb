class Artist < ApplicationRecord
  has_many :songs
  validates_presence_of :name
  validates_uniqueness_of :name, with: :message

  def average_song_length
    songs.average(:length)
  end
end