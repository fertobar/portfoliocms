require 'spec_helper'

describe "AdminPosts" do

  before :each do
    @user = Factory(:user)
    visit "/admin"
    fill_in "Email", :with => @user.email
    fill_in "Password", :with => @user.password
    click_button "Sign in"
    visit "/admin/post"
    page.should have_content('List of Posts')
    @section = Factory(:section, :title => 'My Section', :subtitle => 'by Joe Doe',  :priority => 0)
    @post_format = Factory(:post_format)
  end

  after :each do
    @user.destroy
  end

  it "logged users can create Posts" do
    click_link('Add new')
    page.should have_content('New Post')
    select('My Section', :from => 'post_section_id')
    select('Normal', :from => 'post_post_format_id')
    fill_in "Title", :with => "My Post Title"
    fill_in "Subtitle", :with => "My Post Subtitle"
    fill_in "Text", :with => "My Post Text........."
    click_button "Save"
    page.should have_content('Post successfully created')
    page.should have_content('My Post Title')
  end

  it "logged users can edit Posts" do
    post = Factory(:post, :title => 'My Post', :subtitle => 'by Joe Doe', :section => @section, :post_format=> @post_format)
    visit "/admin/post/#{post.id}/edit"
    page.should have_content("Edit Post 'My Post'")
    fill_in "Title", :with => "Custom Title"
    fill_in "Subtitle", :with => "Custom Post"
    click_button "Save"
    page.should have_content('Post successfully updated')
    page.should have_content('Custom Title')
  end

  it "logged users can delete Posts" do
    post = Factory(:post, :title => 'My Post', :subtitle => 'by Joe Doe', :section => @section, :post_format=> @post_format)
    visit "/admin/post/#{post.id}/delete"
    page.should have_content("Delete Post 'My Post'")
    click_button "Yes, I'm sure"
    page.should have_content('Post successfully deleted')
  end

end
