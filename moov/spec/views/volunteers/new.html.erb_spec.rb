require 'rails_helper'

RSpec.describe "volunteers/new", :type => :view do
  before(:each) do
    assign(:volunteer, Volunteer.new(
      :name => "MyString",
      :approved? => false,
      :leader? => false,
      :admin? => false,
      :email => "MyString"
    ))
  end

  it "renders new volunteer form" do
    render

    assert_select "form[action=?][method=?]", volunteers_path, "post" do

      assert_select "input#volunteer_name[name=?]", "volunteer[name]"

      assert_select "input#volunteer_approved?[name=?]", "volunteer[approved?]"

      assert_select "input#volunteer_leader?[name=?]", "volunteer[leader?]"

      assert_select "input#volunteer_admin?[name=?]", "volunteer[admin?]"

      assert_select "input#volunteer_email[name=?]", "volunteer[email]"
    end
  end
end
