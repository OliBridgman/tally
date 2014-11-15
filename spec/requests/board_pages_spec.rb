require 'spec_helper'

describe "BoardPages" do
  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }

  describe "board creation" do
    before { visit root_path }

    describe "with invalid information" do

      it "should not create a board" do
        expect { click_button "Create" }.not_to change(Board, :count)
      end

      describe "error messages" do
        before { click_button "Create" }
        it { should have_content('error') }
      end
    end

    describe "with valid information" do

      before { fill_in 'board_title', with: "Lorem ipsum" }
      it "should create a board" do
        expect { click_button "Create" }.to change(Board, :count).by(1)
      end
    end
  end
end
