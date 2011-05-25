class Contact < ActiveRecord::Base

  validates_presence_of :first_name, :last_name, :email
  validates_uniqueness_of :email
  validates_format_of :email, :with => /^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$/

  scope :today, where([" created_at between ? AND ?", Time.zone.now.beginning_of_day, Time.zone.now.end_of_day])

end
