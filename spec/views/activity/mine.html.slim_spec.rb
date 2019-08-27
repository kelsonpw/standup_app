require "rails_helper"

RSpec.describe "activity/mine.html.slim", type: :view do
  it "renders the word feed" do
    render :template => "activity/feed.html.slim"
    expect(rendered).to match /feed/
  end
end
