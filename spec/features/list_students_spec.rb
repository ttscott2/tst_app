require "rails_helper"

describe "Viewing the list of students" do
  it "shows all students" do
    
    visit students_url
    expect(page).to have_text("3 Students")
    expect(page).to have_text(student1.first_name)
    expect(page).to have_text(student2.first_name)
    expect(page).to have_text(student3.first_name)
  end
end
