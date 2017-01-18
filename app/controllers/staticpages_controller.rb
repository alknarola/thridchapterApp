class StaticpagesController < ApplicationController
  def home
    if logged_in?
        @micropost  = current_user.usermicroposts.build
        @feed_items = current_user.feed.paginate(page: params[:page],per_page:5)
      end
  end

  def help
  end

  def about
  end
end
