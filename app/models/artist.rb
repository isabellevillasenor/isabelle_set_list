class Artist < ApplicationRecord
  has_many :songs

  def average_song_length
    songs.average(:length)
  end
end