class ChatController < ApplicationController
	skip_before_action :authenticate_user!
  def index
  	# @usls = Usl.all
  end
end
