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

    it 'should take an input of "Good Dooooog" and return "Good ~Dooooog~"' do
      expect(subject.check("Good Dooooog")).to eq ("Good ~Dooooog~")
    end

    it 'should take an input of "These words are spnelt correclty" and return "These words are ~spnelt~ ~correclty~"' do
      expect(subject.check("These words are spnelt correclty")).to eq ("These words are ~spnelt~ ~correclty~")
    end

    it 'should take an input of 1 and return "Error input not a string"' do
      expect(subject.check(1)).to eq ("Error input not a string")
    end

    it 'should take an input of true and return "Error input not a string"' do
      expect(subject.check(true)).to eq ("Error input not a string")
    end

    it 'should take an input of "the cat sat on the mat." and return "the cat sat on the mat."' do
      expect(subject.check("the cat sat on the mat.")).to eq ("the cat sat on the mat.")
    end

    it 'should take an input of "the cat sat on the maaat." and return "the cat sat on the ~maaat~."' do
      expect(subject.check("the cat sat on the maaat.")).to eq ("the cat sat on the ~maaat~.")
    end

    it 'should take an input of "the cat sat on the mat!" and return "the cat sat on the mat!"' do
      expect(subject.check("the cat sat on the mat!")).to eq ("the cat sat on the mat!")
    end

    it 'should take an input of "hi there- dave" and return "hi there- dave"' do
      expect(subject.check("hi there- dave")).to eq ("hi there- dave")
    end
  end
end