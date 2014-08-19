require 'rails_helper'

describe 'tagging posts' do 
	it 'displays tags as links under posts' do
		visit '/posts'
		click_link 'Deposit Food Porn'
		fill_in 'Title', with: 'A brand new post'
		fill_in 'Tags', with: '#yolo, #swag'
		click_button 'Create New Food Porn'

		expect(page).to have_link '#yolo'
		expect(page).to have_link '#swag'
	end
end