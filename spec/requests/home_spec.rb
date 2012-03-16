require 'spec_helper'

describe "home page" do
  it "displays the user's username after successful login" do
    user = Factory(:user)
    visit "/admin"
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_button "Sign in"
    page.should have_content('Signed in successfully.')
    page.should have_content(user.email)
    user.destroy
  end

  it "displays the home page with a section" do
    home_section = Factory(:section, :title => 'Home', :subtitle => 'by Joe Doe',  :priority => 0)
    normal_post_home = Factory(:post, section: home_section,post_format: Factory(:post_format))
    visit home_index_path
    page.should have_content('Home')
    page.should have_content('by Joe Doe')
    page.should have_content('Welcome')
    page.should have_content('Welcome to my site...')
  end


end