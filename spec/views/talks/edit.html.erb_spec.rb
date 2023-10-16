require 'rails_helper'

RSpec.describe "talks/edit", type: :view do
  let(:talk) {
    Talk.create!(
      title: "MyString",
      duration: "MyString",
      meeting: nil
    )
  }

  before(:each) do
    assign(:talk, talk)
  end

  it "renders the edit talk form" do
    render

    assert_select "form[action=?][method=?]", talk_path(talk), "post" do

      assert_select "input[name=?]", "talk[title]"

      assert_select "input[name=?]", "talk[duration]"
    end
  end
end
