def sign_up(email)
	visit '/photos'
	click_link('Sign up')
  fill_in('user_email', with: email)
  fill_in('Password', with: 'testtest')
  fill_in('Password confirmation', with: 'testtest')
  click_button('Sign up')
end
