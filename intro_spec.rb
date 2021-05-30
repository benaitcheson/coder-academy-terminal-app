# my tests

#describe 'check if returning user or new user' do
#    it 'should return a string' do
#      name = name.new("scott")
#      expect(name.user).to eq "scott"
#      expect(name.user).to match "scott"
#      expect(name) to be_instance_of Name
#    end    
#end

describe "test Pantry list" do
  context "#view the Pantry list" do
    before do
      @pantry_list = Pantry.new(name)
    end

    it 'should create a new user file' do
      @pantry_list.view
      expect(File.exist?('./#{name}.txt')).to be true
    end

    it 'should be empty' do
      expect(File.size('./#{name}.txt')).to eq(0)
    end

    after(:context) do
      File.delete('./#{name}.txt')
    end
  end
end