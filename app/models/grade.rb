class Grade < ActiveRecord::Base
  has_and_belongs_to_many :courses
  has_many :klasses
  belongs_to :knowledge_group
end
