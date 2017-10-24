require 'test_helper'

class WorkExpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work_exp = work_exps(:one)
  end

  test "should get index" do
    get work_exps_url
    assert_response :success
  end

  test "should get new" do
    get new_work_exp_url
    assert_response :success
  end

  test "should create work_exp" do
    assert_difference('WorkExp.count') do
      post work_exps_url, params: { work_exp: { description: @work_exp.description, name: @work_exp.name, year: @work_exp.year } }
    end

    assert_redirected_to work_exp_url(WorkExp.last)
  end

  test "should show work_exp" do
    get work_exp_url(@work_exp)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_exp_url(@work_exp)
    assert_response :success
  end

  test "should update work_exp" do
    patch work_exp_url(@work_exp), params: { work_exp: { description: @work_exp.description, name: @work_exp.name, year: @work_exp.year } }
    assert_redirected_to work_exp_url(@work_exp)
  end

  test "should destroy work_exp" do
    assert_difference('WorkExp.count', -1) do
      delete work_exp_url(@work_exp)
    end

    assert_redirected_to work_exps_url
  end
end
