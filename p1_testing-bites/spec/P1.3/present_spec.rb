require 'present'

RSpec.describe Present do
    it "wraps and unwraps a value" do
        gift = Present.new
        gift.wrap("books")
        expect(gift.unwrap).to eq "books"
    end

    context "when contents have already been wrapped" do
        it "fails" do
            gift = Present.new
            gift.wrap("books")
            expect { gift.wrap("books") }.to raise_error "Contents have already been wrapped."
        end
    end

    context "when no contents have been wrapped" do
        it "fails" do
            gift = Present.new
            expect { gift.unwrap }.to raise_error "No contents have been wrapped."
        end
    end
end