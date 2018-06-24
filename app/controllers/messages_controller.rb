class MessagesController < ApplicationController
  def new
    @message = Message.new
  end
  def create
    redirect_to new_message_url, notice: "Message received, thanks!"
  end
end
