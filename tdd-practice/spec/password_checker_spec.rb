require 'password_checker'

RSpec.describe PasswordChecker do

    it "recieves a valid 8+ character password" do
        test_password = PasswordChecker.new
        outcome = test_password.check("figurine")
        expect(outcome).to eq true
    end

context "invalid <8 character password provided" do
    it "fails" do
        test_password = PasswordChecker.new
        expect { test_password.check("excel") }.to raise_error "Invalid password, must be 8+ characters."
        end
    end

context "no password provided" do
    it "fails" do
        test_password = PasswordChecker.new
        expect { test_password.check("") }.to raise_error "Invalid password, must be 8+ characters."
        end
    end
end

