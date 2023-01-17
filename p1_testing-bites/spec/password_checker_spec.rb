require 'password_checker'

RSpec.describe PasswordChecker do

    it "recieves a valid 8+ character password" do
        expect(PasswordChecker.new.check("figurine")).to eq true
    end

context "invalid < 8 character password provided" do
    it "fails" do
        expect { PasswordChecker.new.check("excel") }.to raise_error "Invalid password, must be 8+ characters."
        end
    end

context "no password provided" do
    it "fails" do
        expect { PasswordChecker.new.check("") }.to raise_error "Invalid password, must be 8+ characters."
        end
    end
end

