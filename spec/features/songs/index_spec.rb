require 'rails_helper'

describe 'Song Index' do
  before :each do
    dm = Artist.create!(name: "Donny McCaslin")
    @daytime = dm.songs.create!(title: "Losing Track of Daytime", length: 1005, play_count: 66831)
    izumi = Artist.create!(name: "Izumi Makura")
    @dandy = izumi.songs.create!(title: "知りたい", length: 340, play_count: 23964)
    visit songs_path
  end
  
  it 'should show the page title, song title and play count' do
    expect(page).to have_content('Isabelles Song List')
    
    expect(page).to have_content(@dandy.title)
    expect(page).to have_content(@dandy.play_count)

    expect(page).to have_content(@daytime.title)
    expect(page).to have_content(@daytime.play_count)
  end
end