require 'rails_helper'

RSpec.describe "aids/new", type: :view do
  before(:each) do
    assign(:aid, Aid.new(
      :latitude => 1.5,
      :longitude => 1.5,
      :title => "MyString",
      :category => "MyString",
      :aid_type => "MyString",
      :explanation => "MyText",
      :needy_name => "MyString"
    ))
  end

  it "renders new aid form" do
    render

    assert_select "form[action=?][method=?]", aids_path, "post" do

      assert_select "input[name=?]", "aid[latitude]"

      assert_select "input[name=?]", "aid[longitude]"

      assert_select "input[name=?]", "aid[title]"

      assert_select "input[name=?]", "aid[category]"

      assert_select "input[name=?]", "aid[aid_type]"

      assert_select "textarea[name=?]", "aid[explanation]"

      assert_select "input[name=?]", "aid[needy_name]"
    end
  end
end
