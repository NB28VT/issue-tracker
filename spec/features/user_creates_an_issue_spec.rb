require 'rails_helper'

feature "User creates an issue" do

  # Acceptance Criteria:
  # * I must provide a title
  # * I must provide description
  # * I can mark the issue as reproducible
  # * I can specify the category of the issue

  context 'with valid attributes' do
    it "creates an issue with valid attributes" do
      visit new_issue_path

      fill_in "Title", with: "Broken link"
      fill_in "Description", with: "The sign in link is broken"
      check "Is reproducible"
      fill_in "Category", with: "bug"
      click_on "Create Issue"

      expect(page).to have_content "Issue was successfully created."
    end
  end


end
