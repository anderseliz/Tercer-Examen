class Inventory < ActiveRecord::Base
	has_one :operation, dependent: :destroy

	scope :unused, -> { where("operation_id IS NULL") }

	before_destroy :antesDeBorrar

	def antesDeBorrar
		Registro.create("La pieza con serial <%= self.serial %>  ha sido borrada")
	end
end
