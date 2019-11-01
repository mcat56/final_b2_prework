require 'rails_helper'

describe Student do
  describe 'validations' do
    it { should validate_presence_of :name }
  end
  describe 'attributes' do
    it 'has attributes' do
      student = Student.new(name: 'Olivia')

      expect(student.name).to eq('Olivia')
    end
  end
  describe 'relationships' do
    it { should have_many :student_courses }
    it { should have_many(:courses).through(:student_courses) }
  end
end
