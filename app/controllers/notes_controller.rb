class NotesController < ApplicationController
http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
def create
    @diary = Diary.find(params[:diary_id])
    @note = @diary.notes.create(note_params)
    redirect_to diary_path(@diary)
  end
def destroy
    @article = Diary.find(params[:diary_id])
    @note = @diary.notes.find(params[:id])
    @note.destroy
    redirect_to diary_path(@diary)
  end
  private
    def note_params
      params.require(:note).permit(:text)
    end
end
end
