require 'rails_helper'

RSpec.describe "volunteers/show", :type => :view do
  before(:each) do
    @volunteer = assign(:volunteer, Volunteer.create!(
      :name => "Name",
      :approved? => false,
      :leader? => false,
      :admin? => false,
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Email/)
  end
end
