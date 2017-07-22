require 'test_helper'

#Does the title exist and look right?
class TitleTest < ActionDispatch::IntegrationTest

  test "page titles" do
    get help_path
    assert_select "title", full_title("Help")

    get about_path
    assert_select "title", full_title("About")

    get contact_path
    assert_select "title", full_title("Contact")
  end
  
end
