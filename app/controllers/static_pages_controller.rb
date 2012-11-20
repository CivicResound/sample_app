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

  def cavaliers
  end

  def pacers
  end

  def wellpoint
  end

  def docz
  end

  def blackbaud
  end

  def quicken
  end

  def oneamerica
  end

  def simon
  end

  def ncaa
  end

  def minnesota
  end
end
