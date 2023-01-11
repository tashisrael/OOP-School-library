require_relative '../person'

describe Person do
  context 'When testing person class' do
    person = Person.new('24', 'Tash', true)

    it 'should display name and age ' do
      expect(person).to be_an_instance_of Person
    end
    it 'Person name ' do
      expect(person.name).to eq 'Tash'
    end
    it 'person age' do
      expect(person.age).to eq '24'
    end
    it 'Person parent permission' do
      expect(person.parent_permission).to be true
    end
  end
end
