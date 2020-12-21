require 'rails_helper'

RSpec.describe 'As A Visitor' do
  before :each do
    @dm = Song.create!(title: "Losing Track of Daytime", length: 1005, play_count: 66831)
    @izumi = Song.create!(title: "知りたい", length: 340, play_count: 23964)
  end
  describe 'When I Visit The Index Page' do
    it 'Should show the Page title, song title and play count' do
      visit '/songs'

      expect(page).to have_content("Isabelles Song List")
      
      expect(page).to have_content(@izumi.title)
      expect(page).to have_content(@izumi.play_count)

      expect(page).to have_content(@dm.title)
      expect(page).to have_content(@dm.play_count)
    end
  end
end