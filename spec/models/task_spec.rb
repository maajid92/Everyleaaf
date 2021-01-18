require 'rails_helper'
RSpec.describe Task, type: :model do

  it "is valid with a name, details" do
    task = Task.new(
      name: "Mahad",
      Details: "come again")
    expect(task).to be_valid
  end

  it "is invalid without a name" do
    task = Task.new(
    name: "",
    Details: "come again")
  expect(task).not_to be_valid
end

  it "is invalid with a duplicate name" do
  task=Task.create(
    name: "Mahad",
    Details: "come again")
  task=Task.create(
      name: "Mahad",
      Details: "come again")
  expect(task).not_to be_valid
  end
  it "is invalid with deatils is 21 or more characters" do
  task = Task.new(
  name: "Ali",
  Details: "come tomorrow we can do something about it just call first")
  expect(task).not_to be_valid
end
end
