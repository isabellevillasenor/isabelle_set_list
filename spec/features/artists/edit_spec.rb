require 'rails_helper'

describe 'Edit Artist' do
  before :each do 
    @ys = Artist.create!(name: 'Yasuaki Shimizu')
    visit artists_path
  end

  it 'should display a form to edit artist and submit edits' do
    click_button 'Edit'

    expect(current_path).to eq (edit_artist_path(@ys))

    fill_in :name, with: 'Yasuaki!'
    click_button 'Update Artist'

    expect(current_path).to eq (artists_path)
    expect(page).to have_content('Yasuaki!')
  end
end
