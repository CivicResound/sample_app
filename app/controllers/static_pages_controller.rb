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
    render :layout => false
  end

  def careerfair
  end

  def cavaliers
    render :layout => false
  end

  def pacers
    render :layout => false
  end

  def wellpoint
    render :layout => false
  end

  def docz
    render :layout => false
  end

  def blackbaud
    render :layout => false
  end

  def quicken
    render :layout => false
  end

  def oneamerica
    render :layout => false
  end

  def simon
    render :layout => false
  end

  def ncaa
    render :layout => false
  end

  def minnesota
    render :layout => false
  end

  def bigten
    render :layout => false
  end

  def bkd
    render :layout => false
  end

  def exacttarget
    render :layout => false
  end

  def isc
    render :layout => false
  end

  def herffjones
    render :layout => false
  end
end
