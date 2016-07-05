require "rails_helper"

describe "Viewing the list of students" do
  it "shows all students" do
    student1 = Student.create(first_name: "Kevin", last_name: "Durant", grade: "9", current_avg: 35)
    student2 = Student.create(first_name: "Steph", last_name: "Curry", grade: "10", current_avg: 30)
    student3 = Student.create(first_name: "Lebron", last_name: "James", grade: "12", current_avg: 23)
    visit students_url
    expect(page).to have_text("3 Students")
    expect(page).to have_text(student1.first_name)
    expect(page).to have_text(student2.first_name)
    expect(page).to have_text(student3.first_name)
  end
end
