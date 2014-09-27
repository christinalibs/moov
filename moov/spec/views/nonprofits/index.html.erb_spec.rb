require 'rails_helper'

RSpec.describe "nonprofits/index", :type => :view do
  before(:each) do
    assign(:nonprofits, [
      Nonprofit.create!(
        :name => "Name"
      ),
      Nonprofit.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of nonprofits" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
