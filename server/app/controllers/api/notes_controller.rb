# frozen_string_literal: false

module Api
  # login controller
  class NotesController < ApplicationController
    before_action :authenticate_user

    def create; end
  end
end
