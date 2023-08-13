# frozen_string_literal: false

module Api
  # login controller
  class NotesController < ApplicationController
    before_action :authenticate_user

    def create
      note = @current_user.create_notes(notes_params[:folder_id], notes_params[:name])
      if note.valid?
        render json: note, status: :ok
      else
        render json: { message: 'failed create note' }, status: :unprocessable_entity
      end
    end

    private

    def notes_params
      params.require(:note).permit(:folder_id, :name)
    end
  end
end
