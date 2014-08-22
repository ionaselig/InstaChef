# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Post.destroy_all

1.upto(10) do |n|
	%w(#yolo #swag #lol #healthy #dirty #tbt #lunch #burger #salad #dinner #yum).join(', ')
Post.create(title: 'Cool post #{n}', tag_list: tags, '#yolo, #swag'', picture: File.new(Rails.root.join 'spec/images/'))
end