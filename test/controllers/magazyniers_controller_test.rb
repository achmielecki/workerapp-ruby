require "test_helper"

class MagazyniersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @magazynier = magazyniers(:one)
  end

  test "should get index" do
    get magazyniers_url
    assert_response :success
  end

  test "should get new" do
    get new_magazynier_url
    assert_response :success
  end

  test "should create magazynier" do
    assert_difference("Magazynier.count") do
      post magazyniers_url, params: { magazynier: { Name: @magazynier.Name, Salary: @magazynier.Salary, Shift: @magazynier.Shift, Surname: @magazynier.Surname, magazyn_id: @magazynier.magazyn_id } }
    end

    assert_redirected_to magazynier_url(Magazynier.last)
  end

  test "should show magazynier" do
    get magazynier_url(@magazynier)
    assert_response :success
  end

  test "should get edit" do
    get edit_magazynier_url(@magazynier)
    assert_response :success
  end

  test "should update magazynier" do
    patch magazynier_url(@magazynier), params: { magazynier: { Name: @magazynier.Name, Salary: @magazynier.Salary, Shift: @magazynier.Shift, Surname: @magazynier.Surname, magazyn_id: @magazynier.magazyn_id } }
    assert_redirected_to magazynier_url(@magazynier)
  end

  test "should destroy magazynier" do
    assert_difference("Magazynier.count", -1) do
      delete magazynier_url(@magazynier)
    end

    assert_redirected_to magazyniers_url
  end
end
