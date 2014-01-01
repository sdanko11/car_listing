require 'spec_helper'

feature "Home Page Requirements", %q{
  As car owner
  I want to be able to add cars to my inventory
  So I can better keep track of them
} do

  # Acceptance Criteria:
  # Must have the option to add the name of the car
  # Must have the option to add the color
  # Must have the option to add the year
  # Must have the option to add the milage of the car
  # Must have the option to add a description of the car


  context "expect page to have content" do
  it "all of the options are displayed on the page" do
    visit 'cars/new'
      expect(page).to have_content("Name")
      expect(page).to have_content("Color")
      expect(page).to have_content("Year")
      expect(page).to have_content("Miles")
      expect(page).to have_content("Description")
    end
  end 

end