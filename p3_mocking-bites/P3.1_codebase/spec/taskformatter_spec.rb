require 'taskformatter'

RSpec.describe TaskFormatter do

it "formats an incomplete task" do
    faketask = double :task
    allow(faketask).to receive(:complete?).and_return false
    formatter = TaskFormatter.new(faketask)
    expect(formatter.format).to eq "[ ] #{faketask}"
end

it "formats a complete task" do
    faketask = double :task
    allow(faketask).to receive(:complete?).and_return true
    formatter = TaskFormatter.new(faketask)
    expect(formatter.format).to eq "[x] #{faketask}"
end

end
