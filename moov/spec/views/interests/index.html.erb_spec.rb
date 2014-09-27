require 'rails_helper'

RSpec.describe "interests/index", :type => :view do
  before(:each) do
    assign(:interests, [
      Interest.create!(
        :farming => false,
        :fitness => false,
        :family => false,
        :civic => false,
        :arts => false,
        :tech => false,
        :education => false
      ),
      Interest.create!(
        :farming => false,
        :fitness => false,
        :family => false,
        :civic => false,
        :arts => false,
        :tech => false,
        :education => false
      )
    ])
  end

  it "renders a list of interests" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
