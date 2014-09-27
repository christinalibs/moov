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
        :education => false,
        :interested_id => 1,
        :interested_type => "Interested Type"
      ),
      Interest.create!(
        :farming => false,
        :fitness => false,
        :family => false,
        :civic => false,
        :arts => false,
        :tech => false,
        :education => false,
        :interested_id => 1,
        :interested_type => "Interested Type"
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
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Interested Type".to_s, :count => 2
  end
end
