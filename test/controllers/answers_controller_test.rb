require 'test_helper'

class AnswersControllerTest < ActionController::TestCase
  setup do
    @answer = answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer" do
    assert_difference('Answer.count') do
      post :create, answer: { a01: @answer.a01, a02: @answer.a02, a03: @answer.a03, a04: @answer.a04, a05: @answer.a05, a06: @answer.a06, a07: @answer.a07, a08: @answer.a08, a09: @answer.a09, a10: @answer.a10, a11: @answer.a11, a12: @answer.a12, a13: @answer.a13, a14: @answer.a14, comment: @answer.comment, offer_id: @answer.offer_id }
    end

    assert_redirected_to answer_path(assigns(:answer))
  end

  test "should show answer" do
    get :show, id: @answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answer
    assert_response :success
  end

  test "should update answer" do
    patch :update, id: @answer, answer: { a01: @answer.a01, a02: @answer.a02, a03: @answer.a03, a04: @answer.a04, a05: @answer.a05, a06: @answer.a06, a07: @answer.a07, a08: @answer.a08, a09: @answer.a09, a10: @answer.a10, a11: @answer.a11, a12: @answer.a12, a13: @answer.a13, a14: @answer.a14, comment: @answer.comment, offer_id: @answer.offer_id }
    assert_redirected_to answer_path(assigns(:answer))
  end

  test "should destroy answer" do
    assert_difference('Answer.count', -1) do
      delete :destroy, id: @answer
    end

    assert_redirected_to answers_path
  end
end
