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
 	end



end