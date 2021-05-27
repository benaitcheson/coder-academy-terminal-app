# my tests

require relative 'intro.rb'

describe 'something' do

    it 'should return matching recipes to the user input' do
        expect().to be()
    end

    
end






# Coder acadmey tests

require_relative '../intro.rb'

describe "something" do
  context "#view new user todo list" do
    before do
      @todo = List.new('new_user')
    end

    it 'should create a new file' do
      @todo.view
      expect(File.exist?('./lists/new_user.txt')).to be true
    end

    it 'should be empty' do
      expect(File.size('./lists/new_user.txt')).to eq(0)
    end

    after(:context) do
      File.delete('./lists/new_user.txt')
    end
  end
end