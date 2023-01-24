class DiariesController < ApplicationController
  before_action :authenticate_user!
  def index
    @diaries = Diary.where(user_id: current_user.id).order(created_at: "DESC")
  end

  def show; end

  def new
    @diary = Diary.new
  end

  def edit; end

  def create
    @diary = Diary.new(diary_params)
    if @diary.save
      redirect_to diaries_path, notice: t(".diary_new_notice")
    else
      flash.now[:alert] = t(".diary_new_alert")
      render new_diary_path
    end
  end

  def update; end

  def destroy; end

  private

  def diary_params
    params.require(:diary).permit(:id, :user_id, :japanese_diary, :english_diary, :photo, :private_flag)
  end
end
