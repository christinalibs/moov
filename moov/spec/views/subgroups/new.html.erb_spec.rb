require 'rails_helper'

RSpec.describe "subgroups/new", :type => :view do
  before(:each) do
    assign(:subgroup, Subgroup.new(
      :name => "MyString"
    ))
  end

  it "renders new subgroup form" do
    render

    assert_select "form[action=?][method=?]", subgroups_path, "post" do

      assert_select "input#subgroup_name[name=?]", "subgroup[name]"
    end
  end
end
