# RailsではRails側が自動的にrequireを実行してくれるため、自分でrequireする必要はない
class UsersController < ApplicationController
  def index
    # user.rbはRailsによって自動的にrequireされる
    @users = User.all
  end
end