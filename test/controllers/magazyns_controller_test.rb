require "test_helper"

class MagazynsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @magazyn = magazyns(:one)
  end

  test "should get index" do
    get magazyns_url
    assert_response :success
  end

  test "should get new" do
    get new_magazyn_url
    assert_response :success
  end

  test "should create magazyn" do
    assert_difference("Magazyn.count") do
      post magazyns_url, params: { magazyn: { City: @magazyn.City, Country: @magazyn.Country, PostalCode: @magazyn.PostalCode, Street: @magazyn.Street } }
    end

    assert_redirected_to magazyn_url(Magazyn.last)
  end

  test "should show magazyn" do
    get magazyn_url(@magazyn)
    assert_response :success
  end

  test "should get edit" do
    get edit_magazyn_url(@magazyn)
    assert_response :success
  end

  test "should update magazyn" do
    patch magazyn_url(@magazyn), params: { magazyn: { City: @magazyn.City, Country: @magazyn.Country, PostalCode: @magazyn.PostalCode, Street: @magazyn.Street } }
    assert_redirected_to magazyn_url(@magazyn)
  end

  test "should destroy magazyn" do
    assert_difference("Magazyn.count", -1) do
      delete magazyn_url(@magazyn)
    end

    assert_redirected_to magazyns_url
  end
end
