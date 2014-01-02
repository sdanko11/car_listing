require 'spec_helper'

feature "Owner adds a car succesfully", %q{
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


  context "Expect page to have content" do
  it "Car added succesfully message" do
    visit 'cars/new'

    fill_in "Name", with: "camero"
    fill_in "Color", with: "red"
    fill_in "Description", with: "this is a good car"
    fill_in "Year", with: ''
    fill_in "Miles", with: 1777
    click_on "Create Car" 

    expect(page).to have_content("can't be blank")
    expect(page).to have_content("Name")
    expect(page).to have_content("Color")
    expect(page).to have_content("Year")
    expect(page).to have_content("Miles")
    expect(page).to have_content("Description")
    end
  end 

end