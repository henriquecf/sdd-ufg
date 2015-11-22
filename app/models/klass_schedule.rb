class KlassSchedule < ActiveRecord::Base
  belongs_to :klass

  def name
    "#{week_day_str} => #{starts_at.to_s(:time)} - #{finishs_at.to_s(:time)}"
  end

  def week_day_str
    I18n.t(:"date.day_names")[week_day - 1]
  end
end
