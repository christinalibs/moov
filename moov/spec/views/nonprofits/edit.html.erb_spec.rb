require 'rails_helper'

RSpec.describe "nonprofits/edit", :type => :view do
  before(:each) do
    @nonprofit = assign(:nonprofit, Nonprofit.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit nonprofit form" do
    render

    assert_select "form[action=?][method=?]", nonprofit_path(@nonprofit), "post" do

      assert_select "input#nonprofit_name[name=?]", "nonprofit[name]"
    end
  end
end
