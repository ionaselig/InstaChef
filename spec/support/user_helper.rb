def log_in(email, password)
	visit '/users/sign_in'
	fill_in 'user[email]'
	fill_in 'user[password]'
end