require 'rails_helper'

describe 'As A Visitor' do
  before :each do
    visit artists_path
  end
  
  describe 'When I Visit The Artist Index' do
    
    it 'show all artists and has the title Isabelles Artists' do
      @sc = Artist.create!(name: 'Scott Colley')
      @ys = Artist.create!(name: 'Yasuaki Shimizu')

      expect(page).to have_content('Isabelles Artists')
      expect(page).to have_content("#{@sc.name}")
      expect(page).to have_content("#{@ys.name}")
    end

    it 'has link to create a new artist' do
      expect(page).to have_link('Create New Artist')
      click_link 'Create New Artist'

      expect(current_path).to eq (new_artist_path)
      fill_in :name, with: 'Nobuo Uematsu'
      click_button 'Create Artist'

      expect(current_path).to eq (artists_path)
      expect(page).to have_content('Nobuo Uematsu')
    end

    it 'has a link to destroy an artist' do
      @ys = Artist.create!(name: 'Yasuaki Shimizu')

      expect(page).to have_content("#{@ys.name}")
      expect(page).to have_button('Delete')
      click_button 'Delete'

      expect(current_path).to eq(artists_path)
      expect(page).to_not have_content("#{@ys.name}")
    end
  end
end