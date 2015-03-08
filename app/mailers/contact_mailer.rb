class ContactMailer < ActionMailer::Base
  default :to   => 'admin@letter_opener_web.com',
          :from => 'no-reply@letter_opener_web.com'

  def new_message(from, message, attachment)
    @from, @message = from, message
    if attachment.present?
      attachments[attachment.original_filename] = attachment.tempfile.read
    end
    mail(:subject => 'Testing letter_opener_web', :template_name => 'new_message')
  end
end
