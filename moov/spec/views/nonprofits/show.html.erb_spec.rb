require 'rails_helper'

RSpec.describe "nonprofits/show", :type => :view do
  before(:each) do
    @nonprofit = assign(:nonprofit, Nonprofit.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
