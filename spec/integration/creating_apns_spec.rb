require 'spec_helper'

feature "Creating Apns" do
  let!(:profile) { Factory(:profile) } # name is "The Dude"

  before do
    visit "/"
    click_link "The Dude"
  end

  scenario "Creating an apn" do
    click_link "Create Application"
    fill_in "Why", with: "because I really want to!"
    click_button "Create Apn"
    page.should have_content("Application submitted.")
    page.should have_content("because I really want to!")
    binding.pry
  end

end