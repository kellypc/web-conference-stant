require 'rails_helper'

RSpec.describe "conferences/index", type: :view do
  before(:each) do
    assign(:conferences, [
      Conference.create!(
        name: "Name",
        track: "Track"
      ),
      Conference.create!(
        name: "Name",
        track: "Track"
      )
    ])
  end

  it "renders a list of conferences" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Track".to_s), count: 2
  end
end
