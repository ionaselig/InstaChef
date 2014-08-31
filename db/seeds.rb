# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all

def select_random_file
	images_dir = Dir.new(Rails.root.join('spec/images'))
	images = images_dir.entries.select {|entry| entry.include?(".jpg")}
	File.new(Rails.root.join("spec/images/#{images.sample}"))
end

1.upto(10) do |n|
  tags = %w(#yolo #swag #lol #winnin #burger #salad #healthy #pornographic #glutenfree).sample(2).join(', ')
  addresses = %w(london paris edinburgh madrid).sample
  puts "Adding post number #{n}"
  Post.create(title: "Cool post #{n}", tag_list: tags, address: addresses, picture: select_random_file)
end
