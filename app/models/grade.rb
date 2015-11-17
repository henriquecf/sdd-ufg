class Grade < ActiveRecord::Base
  has_and_belongs_to_many :courses
  belongs_to :knowledge_group
end
