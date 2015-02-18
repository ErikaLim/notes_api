class NotesController < ApplicationController
  def index
    render json: Note.all
  end

  def new
    @note = Note.new
  end

  def create
    note = Note.new(notes_param)
    note.save
  end

  def destroy
    note = Note.find(params[:id])
    note.destroy
    render json:note
  end

  private

  def notes_param
    params.require(:note).permit(:title, :body, :id)
  end
end
