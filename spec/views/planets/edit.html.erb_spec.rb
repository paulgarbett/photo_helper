require 'rails_helper'

RSpec.describe "planets/edit", :type => :view do
  before(:each) do
    @planet = assign(:planet, Planet.create!(
      :name => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit planet form" do
    render

    assert_select "form[action=?][method=?]", planet_path(@planet), "post" do

      assert_select "input#planet_name[name=?]", "planet[name]"

      assert_select "input#planet_image[name=?]", "planet[image]"
    end
  end
end
