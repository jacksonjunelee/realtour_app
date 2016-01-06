class Api::v1::EmailListsController < ApplicationController
 # before_action :authenticate_user
  # def index
  #  @users = User.all
  #  @conversations = Conversation.all
  # end

  def create
    @email = EmailList.new(email_params)
    if @email.save
     render json: @email
    end
  end

private
 def email_params
  params.permit(:email)
 end
end
