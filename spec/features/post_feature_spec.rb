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
 	
		it 'display a list of all posts' do
			visit '/posts'
			expect(page).to have_content 'Bacon'
		end
 	end

 	describe 'creating posts' do
 		it 'adds posts from a form' do
		visit '/posts'
		click_link 'Deposit Food Porn'
		fill_in 'Title', with: 'A brand new post'
		click_button 'Create New Food Porn'

		expect(page).to have_content 'A brand new post'
		expect(current_path).to eq '/posts'
		end 

		it 'can attach an image to the post' do
			visit '/posts'
			click_link 'Deposit Food Porn'
			fill_in 'Title', with: 'A brand new post'
			attach_file 'Picture', Rails.root.join('spec/images/Churros.jpg')
			click_button 'Create New Food Porn'

			expect(page).to have_css 'img.uploaded-pic'

		end
	end 
end