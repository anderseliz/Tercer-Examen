class Operation < ActiveRecord::Base
  belongs_to :worker
  belongs_to :inventory

  scope :last5, -> { limit(5).order('operations.id DESC') }
  scope :todos, -> { where('created_at >= ?', 1.day.ago) }
end
