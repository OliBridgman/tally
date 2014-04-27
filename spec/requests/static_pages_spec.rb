require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
  	it "should have the content 'Tally'" do
    	visit '/static_pages/home'
    	expect(page).to have_content('Tally')
	end
  end
  
end
