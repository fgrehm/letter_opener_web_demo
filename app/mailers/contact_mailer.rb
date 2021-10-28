class ContactMailer < ApplicationMailer
  default :to   => 'admin@letter_opener_web.com',
          :from => 'no-reply@letter_opener_web.com',
          :subject => 'Testing letter_opener_web'

  def new_message(from, subject, message, attachment)
    @from, @message = from, message
    if attachment.present?
      attachments[attachment.original_filename] = attachment.tempfile.read
    end
    mail(:subject => subject, :template_name => 'new_message')
  end
end

