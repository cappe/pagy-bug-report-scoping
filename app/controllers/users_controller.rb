class UsersController < ApplicationController
  def index
    @pagy, @users = pagy(User)
    @pagy_limited, @users_limited = pagy(User.limit(2))
  end
end
