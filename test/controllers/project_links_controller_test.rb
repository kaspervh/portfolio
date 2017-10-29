require 'test_helper'

class ProjectLinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_link = project_links(:one)
  end

  test "should get index" do
    get project_links_url
    assert_response :success
  end

  test "should get new" do
    get new_project_link_url
    assert_response :success
  end

  test "should create project_link" do
    assert_difference('ProjectLink.count') do
      post project_links_url, params: { project_link: { link: @project_link.link } }
    end

    assert_redirected_to project_link_url(ProjectLink.last)
  end

  test "should show project_link" do
    get project_link_url(@project_link)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_link_url(@project_link)
    assert_response :success
  end

  test "should update project_link" do
    patch project_link_url(@project_link), params: { project_link: { link: @project_link.link } }
    assert_redirected_to project_link_url(@project_link)
  end

  test "should destroy project_link" do
    assert_difference('ProjectLink.count', -1) do
      delete project_link_url(@project_link)
    end

    assert_redirected_to project_links_url
  end
end
