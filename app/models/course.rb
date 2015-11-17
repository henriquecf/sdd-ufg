class Course < ActiveRecord::Base
  has_many :grades
end
