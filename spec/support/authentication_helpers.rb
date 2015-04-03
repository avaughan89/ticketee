module AuthenticateHelpers
  def sign_in_as!(user)
    visit '/signin'
    fill_in "Name", with: