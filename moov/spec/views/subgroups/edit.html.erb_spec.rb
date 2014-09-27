require 'rails_helper'

RSpec.describe "subgroups/edit", :type => :view do
  before(:each) do
    @subgroup = assign(:subgroup, Subgroup.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit subgroup form" do
    render

    assert_select "form[action=?][method=?]", subgroup_path(@subgroup), "post" do

      assert_select "input#subgroup_name[name=?]", "subgroup[name]"
    end
  end
end
