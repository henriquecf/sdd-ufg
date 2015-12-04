class KlassIntent < ActiveRecord::Base
  belongs_to :klass
  belongs_to :teacher

  def name
    "#{teacher.name} => #{klass.name}" if teacher && klass
  end

  rails_admin do
    [:id, :created_at, :updated_at].each do |field|
      configure field do
        hide
      end
    end
  end
end
