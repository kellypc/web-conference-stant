require 'rails_helper'

RSpec.describe "conferences/edit", type: :view do
  let(:conference) {
    Conference.create!(
      name: "MyString",
      track: "MyString"
    )
  }

  before(:each) do
    assign(:conference, conference)
  end

  it "renders the edit conference form" do
    render

    assert_select "form[action=?][method=?]", conference_path(conference), "post" do

      assert_select "input[name=?]", "conference[name]"

      assert_select "input[name=?]", "conference[track]"
    end
  end
end
