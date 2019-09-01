require "rails_helper"

RSpec.describe "support/contact.html.slim", type: :view do
  it "renders the contact page" do
    render(:template => "support/contact.html.slim")
    expect(rendered).to(match(/support/))
  end
end
