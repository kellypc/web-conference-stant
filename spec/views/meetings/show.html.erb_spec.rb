require 'rails_helper'

RSpec.describe "meetings/show", type: :view do
  before(:each) do
    assign(:meeting, Meeting.create!(
      period: "Period",
      conference: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Period/)
    expect(rendered).to match(//)
  end
end
