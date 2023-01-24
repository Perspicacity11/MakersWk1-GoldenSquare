require_relative '../lib/music_tracker'

RSpec.describe MusicTracker do

    it "adds a track and returns the information" do
        list1 = MusicTracker.new
        list1.add("Single Ladies", "Beyonce")
        expect(list1.read).to eq "Single Ladies by Beyonce"
    end

    it "adds three tracks and returns the information" do
        list1 = MusicTracker.new
        list1.add("Single Ladies", "Beyonce")
        list1.add("Commander", "Kelly Rowland")
        list1.add("Telephone", "Lady Gaga ft Beyonce")
        expect(list1.read).to eq "Single Ladies by Beyonce | Commander by Kelly Rowland | Telephone by Lady Gaga ft Beyonce"
        end

    it "fails" do
        list1 = MusicTracker.new
        expect { list1.read }.to raise_error "No tracks entered"
    end
end