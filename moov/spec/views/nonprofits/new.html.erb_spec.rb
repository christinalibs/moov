require 'rails_helper'

RSpec.describe "nonprofits/new", :type => :view do
  before(:each) do
    assign(:nonprofit, Nonprofit.new(
      :name => "MyString"
    ))
  end

  it "renders new nonprofit form" do
    render

    assert_select "form[action=?][method=?]", nonprofits_path, "post" do

      assert_select "input#nonprofit_name[name=?]", "nonprofit[name]"
    end
  end
end
