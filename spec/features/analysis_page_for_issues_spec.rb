require 'rails_helper'

feature "User can view the total number of issues in the issues table" do

  scenario "user visits the /issues/analysis page" do

    visit analysis_issues_path
    save_and_open_page

    expect(page).to have_content "Issues analysis page"
  end
end
