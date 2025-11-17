class ProgressesController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_progress, only: %i[ show edit update destroy ]

  # GET /progresses or /progresses.json
  def index
    @progresses = Progress.all
  end

  # GET /progresses/1 or /progresses/1.json
  def show
  end

  # GET /progresses/new
  def new
    @progress = Progress.new
  end

  # GET /progresses/1/edit
  def edit
  end

  # POST /progresses or /progresses.json
  def create
    @progress = Progress.new(progress_params)

    respond_to do |format|
      if @progress.save
        format.html { redirect_to @progress, notice: "Progress was successfully created." }
        format.json { render :show, status: :created, location: @progress }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /progresses/1 or /progresses/1.json
  def update
    respond_to do |format|
      if @progress.update(progress_params)
        format.html { redirect_to @progress, notice: "Progress was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @progress }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /progresses/1 or /progresses/1.json
  def destroy
    @progress.destroy!

    respond_to do |format|
      format.html { redirect_to progresses_path, notice: "Progress was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_progress
      @progress = Progress.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def progress_params
      params.expect(progress: [ :user_id, :challenge_id, :points_earned, :update_frequency ])
    end
end
