include ApplicationHelper

def sign_in(user)
  visit signin_path
  fill_in "Email",    with: user.email
  fill_in "Password", with: user.password
  click_button "Sign in"
  # Sign in when not using Capybara as well.
  cookies[:remember_token] = user.remember_token
end

def sign_up(user)
  fill_in "Name",             with: user.name
  fill_in "Email",            with: user.email
  fill_in "Password",         with: user.password
  fill_in "Confirm Password", with: user.password_confirmation
end
