require 'test_helper'

class PageDesignsControllerTest < ActionController::TestCase
  setup do
    @page_design = page_designs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:page_designs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create page_design" do
    assert_difference('PageDesign.count') do
      post :create, page_design: { design: @page_design.design, user_id: @page_design.user_id }
    end

    assert_redirected_to page_design_path(assigns(:page_design))
  end

  test "should show page_design" do
    get :show, id: @page_design
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @page_design
    assert_response :success
  end

  test "should update page_design" do
    patch :update, id: @page_design, page_design: { design: @page_design.design, user_id: @page_design.user_id }
    assert_redirected_to page_design_path(assigns(:page_design))
  end

  test "should destroy page_design" do
    assert_difference('PageDesign.count', -1) do
      delete :destroy, id: @page_design
    end

    assert_redirected_to page_designs_path
  end
end
