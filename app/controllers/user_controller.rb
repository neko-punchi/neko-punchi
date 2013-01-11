class UserController < ApplicationController
  def show_nickname
    @user = User.find_by_provider_and_id(current_user.provider,current_user.id)
  end

  def change_nickname
    change_user = User.find_by_provider_and_id(params[:provider],params[:id])
    change_user.update_attribute(:nickname, params[:chg_nickname])
  end

end
