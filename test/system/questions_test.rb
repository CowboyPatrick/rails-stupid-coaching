require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "h1", text: "STUPID COACH"
  end
  # test "Coach answers a question" do
  #   visit answer_url
  #   fill_in "question", with: "What time is it?"
  #   click_on "Ask"

  #   assert_text "Silly question, get dressed and go to work!"
  # end

    test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end
end

