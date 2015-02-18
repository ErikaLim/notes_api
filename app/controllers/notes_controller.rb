class NotesController < ApplicationController
  def index
    render json: Note.all
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(notes_param)
    @note.save
  end

  private

  def notes_param
    params.require(:note).permit(:title, :body)
  end
end
