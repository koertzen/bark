class WoofsController < ApplicationController

  def create
    @woof = Woof.new(woof_params)
    @woof.user_id = current_user.id

    if @woof.save
        redirect_to current_user 
    else
        flash[:error] = "Problem!"
        redirect_to current_user
    end
  end

  private
    def set_woof
      @woof = Woof.find(params[:id])
    end

    def woof_params
      params.require(:woof).permit(:content, :user_id)
    end

end
