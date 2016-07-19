class Inventory < ActiveRecord::Base
	has_one :operation, dependent: :destroy

	scope :unused, -> { where("operation_id IS NULL") }
end
