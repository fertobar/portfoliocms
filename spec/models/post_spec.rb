require 'spec_helper'

describe Post do

  before(:each) do
    section = Factory(:section, :title => 'My Section', :subtitle => 'by Joe Doe',  :priority => 0)
    post_format = Factory(:post_format)
    @attr = {
      section: section, 
      post_format: post_format, 
      title: 'My Post',
      subtitle: 'My Post subtitle',
      text: 'Welcome to my site!...'
    }
  end

  it "should create a new instance given a valid attribute" do
    Post.create!(@attr)
  end

  it "should require a section" do
    no_section_post = Post.new(@attr.merge(:section => nil))
    no_section_post.should_not be_valid
  end

  it "should require a post_format" do
    no_post_format_post = Post.new(@attr.merge(:post_format => nil))
    no_post_format_post.should_not be_valid
  end

  it "should require a text" do
    no_text_post = Post.new(@attr.merge(:text => nil))
    no_text_post.should_not be_valid
  end


end