require 'spec_helper'

describe PostFormat do

  before(:each) do
    @attr = {
      name: 'My PostFormat'
    }
  end

  it "should create a new instance given a valid attribute" do
    PostFormat.create!(@attr)
  end

  it "should require a name" do
    no_name_post_format = PostFormat.new(@attr.merge(:name => nil))
    no_name_post_format.should_not be_valid
  end


end