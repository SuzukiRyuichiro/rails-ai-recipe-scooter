require "test_helper"

class ReccipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reccipe = reccipes(:one)
  end

  test "should get index" do
    get reccipes_url
    assert_response :success
  end

  test "should get new" do
    get new_reccipe_url
    assert_response :success
  end

  test "should create reccipe" do
    assert_difference("Reccipe.count") do
      post reccipes_url, params: { reccipe: { content: @reccipe.content, ingredients: @reccipe.ingredients, name: @reccipe.name } }
    end

    assert_redirected_to reccipe_url(Reccipe.last)
  end

  test "should show reccipe" do
    get reccipe_url(@reccipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_reccipe_url(@reccipe)
    assert_response :success
  end

  test "should update reccipe" do
    patch reccipe_url(@reccipe), params: { reccipe: { content: @reccipe.content, ingredients: @reccipe.ingredients, name: @reccipe.name } }
    assert_redirected_to reccipe_url(@reccipe)
  end

  test "should destroy reccipe" do
    assert_difference("Reccipe.count", -1) do
      delete reccipe_url(@reccipe)
    end

    assert_redirected_to reccipes_url
  end
end
