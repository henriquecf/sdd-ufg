class DistributionProcess < ActiveRecord::Base
  has_many :klasses

  validates :semester, :klass_registry_start, :teacher_intent_start,
            :first_resolution_start, :substitute_resolution_start,
            :conclusion, presence: true

  rails_admin do
    [:klasses, :id, :created_at, :updated_at].each do |field|
      configure field do
        hide
      end
    end
  end
end
