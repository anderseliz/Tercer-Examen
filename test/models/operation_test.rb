require 'test_helper'

class OperationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "obtener al trabajador" do
  	if (operations(:one).worker){
  		assert true
  	}
  end
end
