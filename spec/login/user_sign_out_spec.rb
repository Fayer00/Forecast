
require 'rails_helper'

describe "User signs out", type: :system do
  before do
    user = create :user
    sign_in(user)
  end

  scenario "user signs out from dashboard and get taken to homepage" do
    visit authenticated_root_path
    expect(page).to have_current_path(authenticated_root_path)
    click_on 'sign-out-link'
    expect(page).to have_text("Signed out successfully.")
    expect(page).to have_current_path(unauthenticated_root_path)
  end
end