require 'spec_helper'

describe Section do

  before(:each) do
    section = Factory(:section, :title => 'My Section', :subtitle => 'by Joe Doe',  :priority => 0)
    @attr = {
      title: 'My Section', 
      subtitle: 'My Section',
      priority: 0
    }
  end

  it "should create a new instance given a valid attribute" do
    Section.create!(@attr)
  end

  it "should require a title" do
    no_title_section = Section.new(@attr.merge(:title => nil))
    no_title_section.should_not be_valid
  end


end