require 'rails_helper'

RSpec.describe 'As A Visitor' do
  before :each do
    @sc = Artist.create!(name: "Scott Colley")
    @ys = Artist.create!(name: "Yasuaki Shimizu")
  end
  describe 'When I Visit The Artist Index' do
    it 'show all artists and has the title Isabelles Artists' do
      visit "/artists"

      expect(page).to have_content("Isabelles Artists")
      expect(page).to have_content("#{@sc.name}")
      expect(page).to have_content("#{@ys.name}")
    end
  end
end