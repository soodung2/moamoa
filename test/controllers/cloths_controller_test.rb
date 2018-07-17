require 'test_helper'

class ClothsControllerTest < ActionController::TestCase
  setup do
    @cloth = cloths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cloths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cloth" do
    assert_difference('Cloth.count') do
      post :create, cloth: { brand: @cloth.brand, category: @cloth.category, image1: @cloth.image1, image2: @cloth.image2, image3: @cloth.image3, image4: @cloth.image4, name: @cloth.name, price: @cloth.price, sex: @cloth.sex, size: @cloth.size }
    end

    assert_redirected_to cloth_path(assigns(:cloth))
  end

  test "should show cloth" do
    get :show, id: @cloth
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cloth
    assert_response :success
  end

  test "should update cloth" do
    patch :update, id: @cloth, cloth: { brand: @cloth.brand, category: @cloth.category, image1: @cloth.image1, image2: @cloth.image2, image3: @cloth.image3, image4: @cloth.image4, name: @cloth.name, price: @cloth.price, sex: @cloth.sex, size: @cloth.size }
    assert_redirected_to cloth_path(assigns(:cloth))
  end

  test "should destroy cloth" do
    assert_difference('Cloth.count', -1) do
      delete :destroy, id: @cloth
    end

    assert_redirected_to cloths_path
  end
end
