require "application_system_test_case"

class ProgressesTest < ApplicationSystemTestCase
  setup do
    @progress = progresses(:one)
  end

  test "visiting the index" do
    visit progresses_url
    assert_selector "h1", text: "Progresses"
  end

  test "should create progress" do
    visit progresses_url
    click_on "New progress"

    fill_in "Challenge", with: @progress.challenge_id
    fill_in "Points earned", with: @progress.points_earned
    fill_in "Update frequency", with: @progress.update_frequency
    fill_in "User", with: @progress.user_id
    click_on "Create Progress"

    assert_text "Progress was successfully created"
    click_on "Back"
  end

  test "should update Progress" do
    visit progress_url(@progress)
    click_on "Edit this progress", match: :first

    fill_in "Challenge", with: @progress.challenge_id
    fill_in "Points earned", with: @progress.points_earned
    fill_in "Update frequency", with: @progress.update_frequency
    fill_in "User", with: @progress.user_id
    click_on "Update Progress"

    assert_text "Progress was successfully updated"
    click_on "Back"
  end

  test "should destroy Progress" do
    visit progress_url(@progress)
    click_on "Destroy this progress", match: :first

    assert_text "Progress was successfully destroyed"
  end
end
