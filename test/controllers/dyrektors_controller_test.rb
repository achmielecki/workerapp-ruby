require "test_helper"

class DyrektorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dyrektor = dyrektors(:one)
  end

  test "should get index" do
    get dyrektors_url
    assert_response :success
  end

  test "should get new" do
    get new_dyrektor_url
    assert_response :success
  end

  test "should create dyrektor" do
    assert_difference("Dyrektor.count") do
      post dyrektors_url, params: { dyrektor: { Name: @dyrektor.Name, Salary: @dyrektor.Salary, Surname: @dyrektor.Surname, magazyn_id: @dyrektor.magazyn_id } }
    end

    assert_redirected_to dyrektor_url(Dyrektor.last)
  end

  test "should show dyrektor" do
    get dyrektor_url(@dyrektor)
    assert_response :success
  end

  test "should get edit" do
    get edit_dyrektor_url(@dyrektor)
    assert_response :success
  end

  test "should update dyrektor" do
    patch dyrektor_url(@dyrektor), params: { dyrektor: { Name: @dyrektor.Name, Salary: @dyrektor.Salary, Surname: @dyrektor.Surname, magazyn_id: @dyrektor.magazyn_id } }
    assert_redirected_to dyrektor_url(@dyrektor)
  end

  test "should destroy dyrektor" do
    assert_difference("Dyrektor.count", -1) do
      delete dyrektor_url(@dyrektor)
    end

    assert_redirected_to dyrektors_url
  end
end
