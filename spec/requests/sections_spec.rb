require 'spec_helper'

describe "AdminSections" do
 
  before :each do
    @user = Factory(:user)
    visit "/admin"
    fill_in "Email", :with => @user.email
    fill_in "Password", :with => @user.password
    click_button "Sign in"
    visit "/admin/section"
    page.should have_content('List of Sections')
  end
  
  
  after :each do
    @user.destroy
  end

  it "logged users can create Sections" do
    click_link('Add new')
    page.should have_content('New Section')
    fill_in "Title", :with => "My Section Title"
    fill_in "Subtitle", :with => "My Section Subtitle"
    fill_in "Description", :with => "My Section Description........."
    click_button "Save"
    page.should have_content('Section successfully created')
    page.should have_content('My Section Title')
  end
  
  it "logged users can edit Sections" do
    section = Factory(:section, :title => 'My Section', :subtitle => 'by Joe Doe',  :priority => 0)
    visit "/admin/section/#{section.id}/edit"
    page.should have_content("Edit Section 'My Section'")
    fill_in "Title", :with => "Custom Title"
    fill_in "Subtitle", :with => "Custom Section"
    click_button "Save"
    page.should have_content('Section successfully updated')
    page.should have_content('Custom Title')
  end

  it "logged users can delete Sections" do
    section = Factory(:section, :title => 'My Section', :subtitle => 'by Joe Doe',  :priority => 0)
    visit "/admin/section/#{section.id}/delete"
    page.should have_content("Delete Section 'My Section'")
    click_button "Yes, I'm sure"
    page.should have_content('Section successfully deleted')

  end

  
  
end
