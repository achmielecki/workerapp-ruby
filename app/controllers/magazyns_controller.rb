class MagazynsController < ApplicationController
  before_action :set_magazyn, only: %i[ show edit update destroy ]

  # GET /magazyns or /magazyns.json
  def index
    @magazyns = Magazyn.all
  end

  # GET /magazyns/1 or /magazyns/1.json
  def show
  end

  # GET /magazyns/new
  def new
    @magazyn = Magazyn.new
  end

  # GET /magazyns/1/edit
  def edit
  end

  # POST /magazyns or /magazyns.json
  def create
    @magazyn = Magazyn.new(magazyn_params)

    respond_to do |format|
      if @magazyn.save
        format.html { redirect_to magazyn_url(@magazyn), notice: "Magazyn was successfully created." }
        format.json { render :show, status: :created, location: @magazyn }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @magazyn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /magazyns/1 or /magazyns/1.json
  def update
    respond_to do |format|
      if @magazyn.update(magazyn_params)
        format.html { redirect_to magazyn_url(@magazyn), notice: "Magazyn was successfully updated." }
        format.json { render :show, status: :ok, location: @magazyn }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @magazyn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /magazyns/1 or /magazyns/1.json
  def destroy
    @magazyn.destroy

    respond_to do |format|
      format.html { redirect_to magazyns_url, notice: "Magazyn was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_magazyn
      @magazyn = Magazyn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def magazyn_params
      params.require(:magazyn).permit(:City, :Street, :PostalCode, :Country)
    end
end
