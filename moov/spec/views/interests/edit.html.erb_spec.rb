require 'rails_helper'

RSpec.describe "interests/edit", :type => :view do
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
      :interested_type => "MyString"
    ))
  end

  it "renders the edit interest form" do
    render

    assert_select "form[action=?][method=?]", interest_path(@interest), "post" do

      assert_select "input#interest_farming[name=?]", "interest[farming]"

      assert_select "input#interest_fitness[name=?]", "interest[fitness]"

      assert_select "input#interest_family[name=?]", "interest[family]"

      assert_select "input#interest_civic[name=?]", "interest[civic]"

      assert_select "input#interest_arts[name=?]", "interest[arts]"

      assert_select "input#interest_tech[name=?]", "interest[tech]"

      assert_select "input#interest_education[name=?]", "interest[education]"

      assert_select "input#interest_interested_id[name=?]", "interest[interested_id]"

      assert_select "input#interest_interested_type[name=?]", "interest[interested_type]"
    end
  end
end
