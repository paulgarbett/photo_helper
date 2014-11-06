require 'rails_helper'

RSpec.describe "planets/index", :type => :view do
  before(:each) do
    assign(:planets, [
      Planet.create!(
        :name => "Name",
        :image => "Image"
      ),
      Planet.create!(
        :name => "Name",
        :image => "Image"
      )
    ])
  end

  it "renders a list of planets" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
