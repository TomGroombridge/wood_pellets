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

	it "should be able to say how many bags in the order" do 
			visit 'products/new'
			fill_in 'Product Name', with: 'Wood Pellets'
			select '80', from: 'Quantity'
			click_button 'Create Product'
			expect(current_path).to eq '/products'
			expect(page).to have_content 'Wood Pellets'
			expect(page).to have_content '80'
		end		


	it "should be able to say how much the product costs" do 
			visit 'products/new'
			fill_in 'Product Name', with: 'Wood Pellets'
			select '80', from: 'Quantity'
			fill_in 'Price', with: '285'
			click_button 'Create Product'
			expect(current_path).to eq '/products'
			expect(page).to have_content 'Wood Pellets'
			expect(page).to have_content '80'
			expect(page).to have_content '£285'
	end


end