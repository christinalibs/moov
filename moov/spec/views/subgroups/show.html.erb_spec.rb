require 'rails_helper'

RSpec.describe "subgroups/show", :type => :view do
  before(:each) do
    @subgroup = assign(:subgroup, Subgroup.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
