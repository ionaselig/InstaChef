require 'rails_helper'

RSpec.describe Post, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end


# describe '#tag_list=' do
# 	let(:post) { Post.create(title: 'Example post')}


# 	context 'no tags provided' do
# 		it 'gives 0 tags to the post' do
# 			post.tag_list = ''
# 			expect(post.tags).to be_empty
# 		end 
# 	end

# 	context '1 tag' do
# 		it 'adds that tag to our post' do
# 			post.tag_list = '#yolo'
# 			expect(post.tags.first.text).to eq '#yolo'
# 		end 
# 	end

# 	context 'multiple tags' do
# 		it 'adds all the tags to our posts' do
# 			post.tag_list = '#yolo, #swag'
# 			expect(post.tags.first.text).to eq '#yolo'
# 		end 
# 	end	

# 	context 'multiple tags' do
# 		before { Tag.create(text: '#yolo')}
# end
