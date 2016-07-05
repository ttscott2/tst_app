require "rails_helper"

describe "Viewing the list of students" do
  it "shows all students" do
    visit students_url

    expect(page).to have_text("3 Students")
  end
end
