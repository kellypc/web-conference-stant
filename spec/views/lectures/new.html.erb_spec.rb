require 'rails_helper'

RSpec.describe "lectures/new", type: :view do
  before(:each) do
    assign(:lecture, Lecture.new(
      title: "MyString",
      duration: "MyString",
      meeting: nil
    ))
  end

  it "renders new lecture form" do
    render

    assert_select "form[action=?][method=?]", lectures_path, "post" do

      assert_select "input[name=?]", "lecture[title]"

      assert_select "input[name=?]", "lecture[duration]"

      assert_select "input[name=?]", "lecture[meeting_id]"
    end
  end
end
