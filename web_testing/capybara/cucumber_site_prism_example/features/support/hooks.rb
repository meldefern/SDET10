After('@login', '~@non-reg-user') do
	find_by_id('idcta-username').click
	click_link('Sign out')
end