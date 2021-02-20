class MeetsController < ApplicationController
  before_action :set_meet, only: :show

  def index
    @meet = Meet.new
  end

  def create
    @meet = Meet.create(meet_params)

    if @meet.save
      redirect_to @meet, success: "Данные успешно сохранены"
    else
      render :index
      end
  end

  def show
  end

  private

  def set_meet
    @meet = Meet.find(params[:id])
  end

  def meet_params
    params.require(:meet).permit(:day, :place, :time, :optional)
  end
end
