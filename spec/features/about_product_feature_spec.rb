require 'spec_helper'
	
	describe 'about product' do 

		it "should be able to create a new post about product" do 
			visit 'about/new'
			fill_in 'Title', with: 'New Post'
			click_button 'Create Post'
			expect(current_path).to eq '/about'
			expect(page).to have_content 'New Post'
		end




	end