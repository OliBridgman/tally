require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
  	it "should have the content 'Tally'" do
    	visit '/static_pages/home'
    	expect(page).to have_content('Tally')
	end

	# describe "for signed-in users" do
 #      let(:user) { FactoryGirl.create(:user) }
 #      before do
 #        FactoryGirl.create(:board, user: user, title: "Lorem ipsum")
 #        FactoryGirl.create(:board, user: user, title: "Dolor sit amet")
 #        sign_in user
 #        visit root_path
	#   end

	#   it "should render the user's boards" do
 #        user.boards.each do |item|
 #          expect(page).to have_selector("li##{item.id}", text: item.title)
 #        end
 #      end
 #    end
  end
  
end
