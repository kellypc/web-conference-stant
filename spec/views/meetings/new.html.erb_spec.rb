require 'rails_helper'

RSpec.describe "meetings/new", type: :view do
  before(:each) do
    assign(:meeting, Meeting.new(
      period: "MyString",
      conference: nil
    ))
  end

  it "renders new meeting form" do
    render

    assert_select "form[action=?][method=?]", meetings_path, "post" do

      assert_select "input[name=?]", "meeting[period]"

      assert_select "input[name=?]", "meeting[conference_id]"
    end
  end
end
