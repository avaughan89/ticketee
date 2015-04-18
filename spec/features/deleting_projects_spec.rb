require 'spec_helper'

feature "Deleting Projects" do
  before do
    sign_in_as!(FactoryGirl.create(:admin_user))
  end
  before do
    FactoryGirl.create(:project, name: "TextMate 2")

    visit '/'

    click_link "TextMate 2"
    click_link "Delete Project"
  end

  scenario "Deleting a project" do

    expect(page).to have_content("Project has been destroyed")

    visit '/'

    expect(page).to have_no_content("TextMate 2")

  end

  scenario 'Testing for delete button to remove itself' do
    visit '/'

    expect(page).to have_content("Delete")
  end
end