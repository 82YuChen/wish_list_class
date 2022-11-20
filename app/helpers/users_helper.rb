module UsersHelper
    def current_user
      @_user_ ||= User.find_by(id: session[:user])
    end

    def user_signed_in?
      !!session[:user]
    end
end
