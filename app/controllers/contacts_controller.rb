class ContactsController < ApplicationController
  skip_before_action :require_login, only: %i[new confirm back create]

  def new
    @contact = Contact.new
  end

  def confirm
    @contact = Contact.new(contact_params)
    return unless @contact.invalid?

    flash.now[:danger] = '入力内容が正しくありません。'
    render :new
  end

  def back
    @contact = Contact.new(contact_params)
    render :new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.send_mail(@contact).deliver_now
      redirect_to root_path, success: '正常にメールが送信されました！'
    else
      flash.now[:danger] = '入力内容が正しくありません。'
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :title, :message)
  end
end
