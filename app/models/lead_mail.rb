#
# A LeadMail is a mail that is send to a lead record.
# The content of the mail is taken from the mail template association
# The actual mail is send using a mailer that is not included in this project.
#
class LeadMail < ActiveRecord::Base
  
  # This is how it works in reality
  # belongs_to :lead, :counter_cache => true
  # belongs_to :mail_template
  # belongs_to :from_user, :class_name => "User", :foreign_key => "from_user_id", :counter_cache => :send_lead_mails_count
  
  def send_this_week?
    created_at.year == Date.today.year && created_at.strftime("%U") == Date.today.strftime("%U")
  end
end
