class Operation < ActiveRecord::Base
  belongs_to :worker
  belongs_to :inventory

  scope :last5, -> { limit(5).order('operations.id DESC') }
  scope :todos, -> { where('created_at >= ?', 1.day.ago) }

  before_destroy :antesDeBorrar

	def antesDeBorrar
		Registro.create("La operación con referencia a la pieza self.inventory_id y al usuario self.worker_id ha sido borrada")
	end

end
