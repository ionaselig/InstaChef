require 'rails_helper'

describe 'posts' do
	context 'no posts' do
		it 'shows a message' do
			visit'/posts'
			expect(page).to have_content 'Food Porn Bank Empty'
		end
	end

	context 'With posts' do
		before do
			Post.create(title: 'Bacon')
		end
 	
		it 'desplay a list of all posts' do
			visit '/posts'
			expect(page).to have_content 'Bacon'
		end
 	end

 	describe 'creating posts' do
 		it 'adds posts from a form' do
		visit '/posts'
		click_link 'Deposit Food Porn'
		fill_in 'Title', with: 'A brand new post'
		

		expect(page).to have_content 'A brand new post'
		expect(current_path).to eq '/posts'
		end 
	end 
end