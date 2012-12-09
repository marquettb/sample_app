def full_title(page_title)
  base_title = "HobbyBuddy"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end

def sign_in(user)
  visit signin_path
  fill_in "session_email",    with: user.email
  fill_in "session_password", with: user.password
  click_button "Go!"
  # Sign in when not using Capybara as well.
  cookies[:remember_token] = user.remember_token
  end
end 