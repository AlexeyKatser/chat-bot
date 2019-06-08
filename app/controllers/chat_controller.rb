class ChatController < ApplicationController
	skip_before_action :authenticate_user!
  def index
  	 @situaions = Situaion.all

  end
end
