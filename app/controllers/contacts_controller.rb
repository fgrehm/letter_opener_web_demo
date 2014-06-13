class ContactsController < ApplicationController
  def new
  end

  def create
    ContactMailer.new_message(params[:email], params[:message], params[:attachment]).deliver
    redirect_to '/', notice: "Email sent successfully, please check letter_opener_web's inbox."
  end
end
