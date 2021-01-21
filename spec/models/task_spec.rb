require 'rails_helper'
RSpec.describe Task, type: :model do

  it "is valid with a name, details" do
    task = Task.new(
      name: "sundus",
      Details: "Enjoy")
    expect(task).to be_valid
  end

  it "is invalid without a name" do
    task = Task.new(
    name: "",
    Details: "Enjoy")
  expect(task).not_to be_valid
end

  it "is invalid with a duplicate name" do
  task=Task.create(
    name: "sundus",
    Details: "Enjoy")
  task=Task.create(
      name: "sundus",
      Details: "Enjoy")
  expect(task).not_to be_valid
  end
  it "is invalid with deatils is 21 or more characters" do
  task = Task.new(
  name: "sunuds",
  Details: "When you feel like quitting, think about why you started.")
  expect(task).not_to be_valid
end
end
