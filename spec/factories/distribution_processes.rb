FactoryGirl.define do
  factory :distribution_process do
    semester "2015/2"
    klass_registry_start "2015-07-01"
    teacher_intent_start "2015-07-04"
    first_resolution_start "2015-07-06"
    substitute_resolution_start "2015-07-08"
    conclusion "2015-07-10"
  end
end
