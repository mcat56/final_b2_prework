require 'rails_helper'

describe 'as a visitor I can see a course show page' do
  it 'displays course name and the students in that course' do
    bio = Course.create(name: 'Biology')

    sal = Student.create(name: 'Sal')
    meg = Student.create(name: 'Meg')
    mike = Student.create(name: 'Mike')
    ian = Student.create(name: 'Ian')

    student_1 = bio.student_courses.create(student: sal, grade: 3.6)
    student_2 = bio.student_courses.create(student: meg, grade: 3.2)
    student_3 = bio.student_courses.create(student: mike, grade: 3.5)
    student_4 = bio.student_courses.create(student: ian, grade: 3.1)

    visit "/courses/#{bio.id}"

    expect(page).to have_content('Course Page')
    expect(page).to have_content('Biology')

    within "#students" do
      expect(page).to have_content('Students:')
      expect(page.find_all('.student')[0]).to have_content("Sal")
      expect(page.find_all('.student')[1]).to have_content("Mike")
      expect(page.find_all('.student')[2]).to have_content("Meg")
      expect(page.find_all('.student')[3]).to have_content("Ian")
    end
  end
end
