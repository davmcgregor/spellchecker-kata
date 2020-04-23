require 'spelling'

describe Spelling do
  describe '#check' do
    it 'should take an input of "Cat" and return "Cat"' do
      expect(subject.check("Cat")).to eq ("Cat")
    end

    it 'should take an input of "Dog" and return "Dog"' do
      expect(subject.check("Dog")).to eq ("Dog")
    end

    it 'should take an input of "Dooooog" and return "~Dooooog~"' do
      expect(subject.check("Dooooog")).to eq ("~Dooooog~")
    end

    it 'should take an input of "Good cat" and return "Good cat"' do
      expect(subject.check("Good cat")).to eq ("Good cat")
    end
  end
end