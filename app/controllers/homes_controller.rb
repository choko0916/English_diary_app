class HomesController < ApplicationController
  before_action :sign_in_required, only: [:show]
  def index; end

  def show
    @diaries = Diary.where(user_id: current_user.id)
    @words = Word.where(user_id: current_user.id)
  end
end
