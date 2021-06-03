class RunningsController < ApplicationController
  before_action :set_running, only: %i[ show edit update destroy ]

  # GET /events or /events.json
  def index
    @runnings = Running.all
    @runnings = Running.order("created_at DESC")
  end

  # GET /events/1 or /events/1.json
  def show
  end

  # GET /events/new
  def new
    @running = Running.new
    @runnings = Running.all
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events or /events.json
  def create
    @running = Running.new(running_params)

    respond_to do |format|
      if @running.save
        format.html { redirect_to @running, notice: "Running was successfully created." }
        format.json { render :show, status: :created, location: @running }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @running.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1 or /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: "Event was successfully updated." }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1 or /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: "Event was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_running
      @running = Running.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def running_params
      params.require(:running).permit(:condition_id, :distance_id, :title, :start_date, :end_date)
    end
end
