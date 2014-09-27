require 'rails_helper'

RSpec.describe "interests/show", :type => :view do
  before(:each) do
    @interest = assign(:interest, Interest.create!(
      :farming => false,
      :fitness => false,
      :family => false,
      :civic => false,
      :arts => false,
      :tech => false,
      :education => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
