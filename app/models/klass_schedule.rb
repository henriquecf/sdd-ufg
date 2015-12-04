class KlassSchedule < ActiveRecord::Base
  belongs_to :klass

  def name
    "#{week_day_str} => #{starts_at.to_s(:time)} - #{finishs_at.to_s(:time)}" if week_day_str && starts_at && finishs_at
  end

  def week_day_str
    I18n.t(:"date.day_names")[week_day - 1] if week_day
  end

  rails_admin do
    include_all_fields
    field :week_day do
      formatted_value do
        bindings[:object].week_day_str
      end
    end
    exclude_fields :created_at, :updated_at, :id
  end
end
