require 'rails_helper'

RSpec.describe "conferences/show", type: :view do
  before(:each) do
    assign(:conference, Conference.create!(
      name: "Name",
      track: "Track"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Track/)
  end
end
