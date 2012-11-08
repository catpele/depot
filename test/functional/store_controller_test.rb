require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    #Checks that there are at least 4 elements that the CSS is being applied to
    assert_select '#columns #side a', :minimum => 4
    #This verifies that all our product entries are displayed
    assert_select '#main .entry', 3
    #This checks that one of the entries contains our book
    assert_select 'h3', 'Programming Ruby 1.9'
    #This checks that the price contains a $ sign, followed by any number, a comma and or another digit (\d).
    #followed by a decimal point and then two more digits.
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

end
