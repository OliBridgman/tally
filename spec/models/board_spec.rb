require 'spec_helper'

describe Board do
  let(:user) { FactoryGirl.create(:user) }
  before { @board = user.boards.build(title: "Lorem ipsum") }

  subject { @board }

  it { should respond_to(:title) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should eq user }

  it { should be_valid }

  describe "when user_id is not present" do
    before { @board.user_id = nil }
    it { should_not be_valid }
  end

  describe "with blank title" do
    before { @board.title = " " }
    it { should_not be_valid }
  end

  describe "with title that is too long" do
    before { @board.title = "a" * 141 }
    it { should_not be_valid }
  end

end
