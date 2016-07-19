class Worker < ActiveRecord::Base
	validates :name, presence: true
	has_many :operation, dependent: :destroy

	scope :tools, -> { Inventory.where(operation_id: Operation.where(worker_id: 3)) }
end
