require 'rails_helper'

RSpec.describe 'As A Visitor' do
  before :each do
    @sc = Artist.create!(name: 'Scott Colley')
    @ys = Artist.create!(name: 'Yasuaki Shimizu')
    umi = @ys.songs.create!(title: 'Umi No Ue Kara', length: 818, play_count: 726247)
    ka = @ys.songs.create!(title: 'Kakashi', length: 444, play_count: 1056284)
  end

  describe 'When I Visit An Artists Show Page' do
    it 'Should have the artist name, average song length, and total song count' do
      visit artist_path(@ys)

      expect(page).to have_content(@ys.name)
      expect(page).to have_content(@ys.average_song_length)
      expect(page).to have_content(@ys.songs.count)
    end

    it 'Should have a link to take you back to artists index' do
      visit artist_path(@ys)

      expect(page).to have_link('Take Me Back')
      click_link

      expect(current_path).to eq(artists_path)
    end
  end
end