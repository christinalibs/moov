require 'rails_helper'

RSpec.describe "subgroups/index", :type => :view do
  before(:each) do
    assign(:subgroups, [
      Subgroup.create!(
        :name => "Name"
      ),
      Subgroup.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of subgroups" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
