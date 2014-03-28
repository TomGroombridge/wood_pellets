require 'spec_helper'

describe 'new product' do 

it "should allow a user to view all the players" do 
			visit '/products'
			expect(current_path).to eq '/products'
		end

it "should be able to go to a new product page " do 
			visit 'products/new'
			expect(current_path).to eq '/products/new'
		end

it "should be able to add a new product" do 
			visit 'products/new'
			fill_in 'Product Name', with: 'Wood Pellets'
			click_button 'Create Product'
			expect(current_path).to eq '/products'
			expect(page).to have_content 'Wood Pellets'
		end

end