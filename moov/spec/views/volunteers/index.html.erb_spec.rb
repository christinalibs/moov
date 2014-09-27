require 'rails_helper'

RSpec.describe "volunteers/index", :type => :view do
  before(:each) do
    assign(:volunteers, [
      Volunteer.create!(
        :name => "Name",
        :approved? => false,
        :leader? => false,
        :admin? => false,
        :email => "Email"
      ),
      Volunteer.create!(
        :name => "Name",
        :approved? => false,
        :leader? => false,
        :admin? => false,
        :email => "Email"
      )
    ])
  end

  it "renders a list of volunteers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
