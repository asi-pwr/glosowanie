class VotingController < ApplicationController
  def show
    @user = User.find_by(token: params[:token])
    @vote = Vote.new
  end

  def vote
    @user = User.find_by!(token: params[:vote][:token])
    @lecturer = Lecturer.find(params[:vote][:lecturer_id])
    @vote = Vote.new
    if @user && @lecturer
      @vote.user = @user
      @vote.lecturer = @lecturer
      @user.regenerate_token
      @vote.save
      redirect_to thanks_url
    else
      flash[:alert] = "Brak tokena lub Twój token został już zużyty."
      render :show
    end
  end

  def thanks; end
end
