require 'rails_helper'

RSpec.describe "meetings/edit", type: :view do
  let(:meeting) {
    Meeting.create!(
      period: "MyString",
      conference: nil
    )
  }

  before(:each) do
    assign(:meeting, meeting)
  end

  it "renders the edit meeting form" do
    render

    assert_select "form[action=?][method=?]", meeting_path(meeting), "post" do

      assert_select "input[name=?]", "meeting[period]"

      assert_select "input[name=?]", "meeting[conference_id]"
    end
  end
end
