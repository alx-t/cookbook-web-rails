require 'rails_helper'

RSpec.describe "recipes/edit", type: :view do
  before(:each) do
    @recipe = assign(:recipe, Recipe.create!(
      :title => "MyString",
      :description => "MyText",
      :ingredients => ""
    ))
  end

  it "renders the edit recipe form" do
    render

    assert_select "form[action=?][method=?]", recipe_path(@recipe), "post" do

      assert_select "input[name=?]", "recipe[title]"

      assert_select "textarea[name=?]", "recipe[description]"

      assert_select "input[name=?]", "recipe[ingredients]"
    end
  end
end
