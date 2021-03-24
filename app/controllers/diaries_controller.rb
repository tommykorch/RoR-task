class DiariesController < ApplicationController
http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
  def index
    @diaries = Diary.all
  end
  def show
    @diary = Diary.find(params[:id])
  end
  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(title: "...", expiration: "...", kind: "...")

    if @diary.save
      redirect_to @diary
    else
      render :new
    end
  end
  def edit
    @article = Diary.find(params[:id])
  end

  def update
    @diary = Diary.find(params[:id])

    if @diary.update(diary_params)
      redirect_to @diary
    else
      render :edit
    end
  end
def destroy
    @diary = Diary.find(params[:id])
    @diary.destroy

    redirect_to root_path
  end

  private
    def diary_params
      params.require(:diary).permit(:title, :expiration, :kind)
    end
end

