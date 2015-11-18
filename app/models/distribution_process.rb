class DistributionProcess < ActiveRecord::Base
  has_many :klasses

  validates :semester, :klass_registry_start, :teacher_intent_start,
            :first_resolution_start, :substitute_resolution_start,
            :conclusion, presence: true
end
