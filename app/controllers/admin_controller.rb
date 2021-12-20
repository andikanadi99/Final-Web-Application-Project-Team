# frozen_string_literal: true

# Controller for admin. Restricts access students
class AdminController < ApplicationController
  # GET /admin, redirects tp home page if user's current role is not a teacher
  def index
    if current_user.role != 'Teacher'
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'You are not authorized to access this page.' }
      end
    end
  end
end
