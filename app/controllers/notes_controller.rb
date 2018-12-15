class NotesController < ApplicationController
  def index
    @note = Note.new
    @notes = Note.all.order('created_at desc')
  end

  def create
    note = Note.create(note_params)
    redirect_to notes_path, notice: 'Note Created Baby!!!'
  end

  private

  def note_params
    params.require(:note).permit(:text)
  end
end
