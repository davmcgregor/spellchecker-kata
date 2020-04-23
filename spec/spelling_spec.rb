require 'spelling'

describe Spelling do
  describe '#check' do
    it 'should take an input of "Cat" and return "Cat"' do
      expect(subject.check("Cat")).to eq ("Cat")
    end

    it 'should take an input of "Dog" and return "Dog"' do
      expect(subject.check("Dog")).to eq ("Dog")
    end
  end
end