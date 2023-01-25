require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour

  it "tests all method with doubles" do
    task_list = TaskList.new
    faketask1 = double :task
    faketask2 = double :task
    task_list.add(faketask1)
    task_list.add(faketask2)
    expect(task_list.all).to eq [faketask1, faketask2]
  end

it "test all_complete method with doubles" do
  task_list = TaskList.new
  faketask1 = double :task
  expect(faketask1).to receive(:complete?).and_return true
  faketask2 = double :task
  expect(faketask2).to receive(:complete?).and_return true
  task_list.add(faketask1)
  task_list.add(faketask2)
  expect(task_list.all_complete?).to eq true
end
end
 