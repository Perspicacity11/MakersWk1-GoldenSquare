require 'add_five'
#require file being tested, in inv. commas and w/o extension

RSpec.describe "add_five method" do
#this is the test suite, the string describes the bit of code being tested (only one per file)
    it "addes 5 to 3 to return 8" do
#here we set the test example, string describes the expected process and outcome
        result = add_five(3)
#run method with example argument 3
        expect(result). to eq 8
#this is the 'assert', the expectation of what this example should return
    end
end

