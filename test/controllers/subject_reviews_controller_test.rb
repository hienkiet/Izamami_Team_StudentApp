require "test_helper"

class SubjectReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subject_review = subject_reviews(:one)
  end

  test "should get index" do
    get subject_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_subject_review_url
    assert_response :success
  end

  test "should create subject_review" do
    assert_difference('SubjectReview.count') do
      post subject_reviews_url, params: { subject_review: { name: @subject_review.name, review: @subject_review.review } }
    end

    assert_redirected_to subject_review_url(SubjectReview.last)
  end

  test "should show subject_review" do
    get subject_review_url(@subject_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_subject_review_url(@subject_review)
    assert_response :success
  end

  test "should update subject_review" do
    patch subject_review_url(@subject_review), params: { subject_review: { name: @subject_review.name, review: @subject_review.review } }
    assert_redirected_to subject_review_url(@subject_review)
  end

  test "should destroy subject_review" do
    assert_difference('SubjectReview.count', -1) do
      delete subject_review_url(@subject_review)
    end

    assert_redirected_to subject_reviews_url
  end
end
