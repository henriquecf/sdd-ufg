class KlassIntent < ActiveRecord::Base
  belongs_to :klass
  belongs_to :teacher

  def name
    "#{teacher.name} => #{klass.name}"
  end
end
