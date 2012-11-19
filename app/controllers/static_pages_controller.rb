class StaticPagesController < ApplicationController
  def home
  	if signed_in?
  	@micropost = current_user.microposts.build
  	@feed_items = current_user.feed.paginate(page: params[:page])
  	@micropost_items = Micropost.all
    end  
  end

  def help
  end

  def about
  end

  def contact
  end

  def lilly
  end

  def careerfair
  end
end
