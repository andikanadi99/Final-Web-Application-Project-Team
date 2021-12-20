# frozen_string_literal: true

# Presentation Controller

# Controller for the presentations
class PresentationsController < ApplicationController
  before_action :get_user, only: %i[new create]
  before_action :set_presentation, only: %i[show edit update destroy]

  # GET /presentations or /presentations.json
  def index
    @presentations = Presentation.all
    @user = current_user
  end

  # GET /presentations/1 or /presentations/1.json
  def show; end

  # GET /presentations/new, if user that is not a teacher tries to access, it will redirect to home page
  def new
    if current_user.role != 'Teacher'
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'You are not authorized to access this page.' }
      end
    else
      @presentation = Presentation.new
      @user = current_user
    end
  end

  # GET /presentations/1/edit, if user that is not a teacher tries to access, it will redirect to home page
  def edit
    if current_user.role != 'Teacher'
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'You are not authorized to access this page.' }
      end
    end
  end

  # POST /presentations or /presentations.json
  def create
    @presentation = Presentation.new(presentation_params)
    respond_to do |format|
      if @presentation.save
        format.html { redirect_to @presentation, notice: 'Presentation was successfully created.' }
        format.json { render :show, status: :created, location: @presentation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @presentation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presentations/1 or /presentations/1.json
  def update
    respond_to do |format|
      if @presentation.update(presentation_params)
        format.html { redirect_to @presentation, notice: 'Presentation was successfully updated.' }
        format.json { render :show, status: :ok, location: @presentation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @presentation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presentations/1 or /presentations/1.json
  def destroy
    @presentation.destroy
    respond_to do |format|
      format.html { redirect_to presentations_url, notice: 'Presentation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_presentation
    @presentation = Presentation.find(params[:id])
  end

  def get_user
    @user = User.find(params[:user_id])
  end

  # Only allow a list of trusted parameters through.
  def presentation_params
    params.require(:presentation).permit(:Name, :Time, :Date, :student_id)
  end
end
