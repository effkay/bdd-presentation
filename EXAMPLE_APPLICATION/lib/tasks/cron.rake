desc 'daily heroku cron task'
task :cron => :environment do
  todays_contacts = Contact.today
  unless todays_contacts.blank?
    ContactsMailer.daily_contacts_digest(todays_contacts).deliver
  end
end
