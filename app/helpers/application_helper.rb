module ApplicationHelper
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

def page_title
  if content_for?(:title)
    "Movie - #{content_for(:title)}"
  else
    "Movie"
  end
end
end
