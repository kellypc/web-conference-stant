require 'rails_helper'

RSpec.describe "talks/show", type: :view do
  before(:each) do
    assign(:talk, Talk.create!(
      title: "Title",
      duration: "Duration",
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Duration/)
  end
end
