require 'rails_helper'

RSpec.describe 'As A Visitor' do
  describe 'When I Visit The New Artist Form' do
    it 'should be able to create a new artist by filling in the name and clicking link' do
      visit "/artists/new"

      expect(page).to have_button("Create Artist")

      fill_in 'Name', with: 'Hosono'
      click_button 

      expect(current_path).to eq("/artists")
      expect(page).to have_content('Hosono')
    end
  end
end