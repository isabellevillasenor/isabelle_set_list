require 'rails_helper'

describe 'Artist Index' do
  it 'should show all artists and has the title Isabelles Artists' do
    @sc = Artist.create!(name: 'Scott Colley')
    @ys = Artist.create!(name: 'Yasuaki Shimizu')

    visit artists_path

    expect(page).to have_content('Isabelles Artists')
    expect(page).to have_content("#{@sc.name}")
    expect(page).to have_content("#{@ys.name}")
  end

  it 'should have link to create a new artist' do
    visit artists_path

    expect(page).to have_link('Create New Artist')
    click_link 'Create New Artist'

    expect(current_path).to eq (new_artist_path)
    fill_in :name, with: 'Nobuo Uematsu'
    click_button 'Create Artist'

    expect(current_path).to eq (artists_path)
    expect(page).to have_content('Nobuo Uematsu')
  end

  it 'should have a link to destroy an artist' do
    @ys = Artist.create!(name: 'Yasuaki Shimizu')

    visit artists_path

    expect(page).to have_content("#{@ys.name}")
    expect(page).to have_button('Delete')
    click_button 'Delete'

    expect(current_path).to eq(artists_path)
    expect(page).to_not have_content("#{@ys.name}")
  end

  it 'should have a link to edit an artist' do
    @ys = Artist.create!(name: 'Yasuaki Shimizu')

    visit artists_path

    expect(page).to have_content("#{@ys.name}")
    expect(page).to have_button('Edit')
    click_button 'Edit'

    expect(current_path).to eq(edit_artist_path(@ys))
  end
end
