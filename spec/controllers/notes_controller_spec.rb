require 'rails_helper'

describe NotesController do
  describe '#create' do
    it 'works' do
      expect {
        post :create, params: {note: {text: 'Yo'}}
      }.to change { Note.count }.by(1)
    end
  end
end
