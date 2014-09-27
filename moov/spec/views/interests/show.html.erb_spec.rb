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
      :education => false,
      :interested_id => 1,
      :interested_type => "Interested Type"
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
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Interested Type/)
  end
end
