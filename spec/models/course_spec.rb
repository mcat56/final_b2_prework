require 'rails_helper'

describe Course do
  describe 'validations' do
    it { should validate_presence_of :name }
  end
  describe 'attributes' do
    it 'has attributes' do
      course = Course.new(name: 'Biology')

      expect(course.name).to eq('Biology')
    end
  end
  describe 'relationships' do
    it { should have_many :student_courses }
    it { should have_many(:students).through(:student_courses) }
  end
end
