require "application_system_test_case"

class AnimesTest < ApplicationSystemTestCase
  setup do
    @anime = animes(:one)
  end

  test "visiting the index" do
    visit animes_url
    assert_selector "h1", text: "Animes"
  end

  test "should create anime" do
    visit animes_url
    click_on "New anime"

    fill_in "Average score", with: @anime.average_score
    fill_in "Character1", with: @anime.character1
    fill_in "Character2", with: @anime.character2
    fill_in "Character3", with: @anime.character3
    fill_in "Character4", with: @anime.character4
    fill_in "Name", with: @anime.name
    fill_in "Release date", with: @anime.release_date
    fill_in "Score", with: @anime.score
    fill_in "Status", with: @anime.status
    fill_in "Studios", with: @anime.studios
    click_on "Create Anime"

    assert_text "Anime was successfully created"
    click_on "Back"
  end

  test "should update Anime" do
    visit anime_url(@anime)
    click_on "Edit this anime", match: :first

    fill_in "Average score", with: @anime.average_score
    fill_in "Character1", with: @anime.character1
    fill_in "Character2", with: @anime.character2
    fill_in "Character3", with: @anime.character3
    fill_in "Character4", with: @anime.character4
    fill_in "Name", with: @anime.name
    fill_in "Release date", with: @anime.release_date
    fill_in "Score", with: @anime.score
    fill_in "Status", with: @anime.status
    fill_in "Studios", with: @anime.studios
    click_on "Update Anime"

    assert_text "Anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Anime" do
    visit anime_url(@anime)
    click_on "Destroy this anime", match: :first

    assert_text "Anime was successfully destroyed"
  end
end
