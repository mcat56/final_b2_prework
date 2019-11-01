require 'rails_helper'

describe StudentCourse do
  describe 'validations' do
    it { should validate_presence_of :grade }
  end
  describe 'relationships' do
    it { should belong_to :student }
    it { should belong_to :course }
  end
  describe 'attributes' do
    it 'has attributes' do
      course = Course.create(name: 'Biology')
      student = Student.create(name: 'Olivia')
      sc_1 = course.student_courses.create(student: student, grade: 3.5)

      expect(sc_1.grade).to eq(3.5)
    end 
  end
end
