class Course < ActiveRecord::Base
  has_many :grades

  rails_admin do
    [:id, :created_at, :updated_at].each do |field|
      configure field do
        hide
      end
    end
  end
end
