FactoryGirl.define do 
	factory :user  do
		email 'alex@example.com'
		password "1234567890"
		password_confirmation "1234567890"
		admin false

		factory :iona do
			email 'iona@example.com'
		end
	end
end