class KlassIntent < ActiveRecord::Base
  belongs_to :klass
  belongs_to :teacher
end
