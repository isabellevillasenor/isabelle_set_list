require 'rails_helper'

RSpec.describe Artist do
  describe 'relationships' do
    it { should have_many :songs }
  end

  describe 'instance methods' do
    describe '#average_song_length' do 
      it 'returns the average song length' do
        izumi = Artist.create!(name: "Izumi Makura")
        dandy = izumi.songs.create!(title: "知りたい", length: 340, play_count: 23964)
        trash = izumi.songs.create!(title: "棄てるなどして", length: 252, play_count: 864271)

        expect(izumi.average_song_length).to eq(296)
      end
    end
  end
end