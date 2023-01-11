require_relative '../student'

describe Student do
  context 'When testing student class' do
    student = Student.new('30', 'classroom', 'Israel', true)

    it 'should display name, age, classroom and parent_permission' do
      expect(student).to be_an_instance_of Student
    end
    it 'Student name ' do
      expect(student.name).to eq 'Israel'
    end
    it 'Student age' do
      expect(student.age).to eq '30'
    end
    it 'student parent permission' do
      expect(student.parent_permission).to be true
    end
  end
end
