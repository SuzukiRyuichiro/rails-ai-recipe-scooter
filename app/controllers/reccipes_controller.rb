class ReccipesController < ApplicationController
  before_action :set_reccipe, only: %i[ show edit update destroy ]

  # GET /reccipes or /reccipes.json
  def index
    @reccipes = Reccipe.all
  end

  # GET /reccipes/1 or /reccipes/1.json
  def show
  end

  # GET /reccipes/new
  def new
    @reccipe = Reccipe.new
  end

  # GET /reccipes/1/edit
  def edit
  end

  # POST /reccipes or /reccipes.json
  def create
    @reccipe = Reccipe.new(reccipe_params)

    respond_to do |format|
      if @reccipe.save
        format.html { redirect_to @reccipe, notice: "Reccipe was successfully created." }
        format.json { render :show, status: :created, location: @reccipe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reccipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reccipes/1 or /reccipes/1.json
  def update
    respond_to do |format|
      if @reccipe.update(reccipe_params)
        format.html { redirect_to @reccipe, notice: "Reccipe was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @reccipe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reccipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reccipes/1 or /reccipes/1.json
  def destroy
    @reccipe.destroy!

    respond_to do |format|
      format.html { redirect_to reccipes_path, notice: "Reccipe was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reccipe
      @reccipe = Reccipe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reccipe_params
      params.require(:reccipe).permit(:name, :ingredients, :content)
    end
end
