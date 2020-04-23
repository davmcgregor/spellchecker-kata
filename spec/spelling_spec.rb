require 'spelling'

describe Spelling do
  describe '#check' do
    it 'should take an input of "Cat" and return "Cat"' do
      expect(subject.check("Cat")).to eq ("Cat")
    end
  end
end