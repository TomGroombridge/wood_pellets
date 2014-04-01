require 'spec_helper'
	
	describe 'about product' do 

		it "should be able to create a new post about product" do 
			visit '/about'
			expect(page).to have_content 'New Post'
		end




	end