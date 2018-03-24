require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { name: @user.name, user_address: @user.user_address, user_exp: @user.user_exp, user_fb: @user.user_fb, user_info: @user.user_info, user_inst: @user.user_inst, user_mail: @user.user_mail, user_phone: @user.user_phone, user_profession: @user.user_profession, user_skype: @user.user_skype, user_telegram: @user.user_telegram, user_tvitter: @user.user_tvitter, user_vk: @user.user_vk } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { name: @user.name, user_address: @user.user_address, user_exp: @user.user_exp, user_fb: @user.user_fb, user_info: @user.user_info, user_inst: @user.user_inst, user_mail: @user.user_mail, user_phone: @user.user_phone, user_profession: @user.user_profession, user_skype: @user.user_skype, user_telegram: @user.user_telegram, user_tvitter: @user.user_tvitter, user_vk: @user.user_vk } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
