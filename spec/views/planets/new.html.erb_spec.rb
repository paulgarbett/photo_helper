require 'rails_helper'

RSpec.describe "planets/new", :type => :view do
  before(:each) do
    assign(:planet, Planet.new(
      :name => "MyString",
      :image => "MyString"
    ))
  end

  it "renders new planet form" do
    render

    assert_select "form[action=?][method=?]", planets_path, "post" do

      assert_select "input#planet_name[name=?]", "planet[name]"

      assert_select "input#planet_image[name=?]", "planet[image]"
    end
  end
end
