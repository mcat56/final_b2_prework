require 'rails_helper'


describe 'as a visitor I can see the student show page' do
  it 'displays the students name course and grades' do
    student = Student.create(name: 'Olivia')

    bio = Course.create!(name: 'Biology')
    calc = Course.create!(name: 'Calculus')
    lit = Course.create!(name: 'Literature')

    course_1 = student.student_courses.create(course: bio, grade: 3.4)
    course_2 = student.student_courses.create(course: calc, grade: 3.7)
    course_3 = student.student_courses.create(course: lit, grade: 3.5)


    visit "/students/#{student.id}"

    expect(page).to have_content('Welcome to Your Student Page Olivia!')

    within "#course-#{course_1.id}" do
      expect(page).to have_content('Course Name: Biology')
      expect(page).to have_content('Course Grade: 3.4')
    end
    within "#course-#{course_2.id}" do
      expect(page).to have_content('Course Name: Calculus')
      expect(page).to have_content('Course Grade: 3.7')
    end
    within "#course-#{course_3.id}" do
      expect(page).to have_content('Course Name: Literature')
      expect(page).to have_content('Course Grade: 3.5')
    end
  end
end
