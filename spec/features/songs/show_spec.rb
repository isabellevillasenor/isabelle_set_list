require 'rails_helper'

RSpec.describe 'As A Visitor' do
  before :each do
    dm = Artist.create!(name: "Donny McCaslin")
    @daytime = dm.songs.create!(title: "Losing Track of Daytime", length: 1005, play_count: 66831)
    izumi = Artist.create!(name: "Izumi Makura")
    @dandy = izumi.songs.create!(title: "知りたい", length: 340, play_count: 23964)
  end

  describe 'When I Visit a Song Show Page' do
    it 'Should have all song info' do
      visit "/songs/#{@dandy.id}"

      expect(page).to have_content(@dandy.title)
      expect(page).to have_content(@dandy.length)
      expect(page).to have_content(@dandy.play_count)
    end

    it 'Should have a link back to the index page' do
      visit "/songs/#{@dandy.id}"

      expect(page).to have_link("Take Me Back")
      click_link

      expect(current_path).to eq("/songs")
    end
  end
end