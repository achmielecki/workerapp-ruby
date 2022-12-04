class MagazyniersController < ApplicationController
  before_action :set_magazynier, only: %i[ show edit update destroy ]

  # GET /magazyniers or /magazyniers.json
  def index
    @magazyniers = Magazynier.all
  end

  # GET /magazyniers/1 or /magazyniers/1.json
  def show
  end

  # GET /magazyniers/new
  def new
    @magazynier = Magazynier.new
  end

  # GET /magazyniers/1/edit
  def edit
  end

  # POST /magazyniers or /magazyniers.json
  def create
    @magazynier = Magazynier.new(magazynier_params)

    respond_to do |format|
      if @magazynier.save
        format.html { redirect_to magazynier_url(@magazynier), notice: "Magazynier was successfully created." }
        format.json { render :show, status: :created, location: @magazynier }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @magazynier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /magazyniers/1 or /magazyniers/1.json
  def update
    respond_to do |format|
      if @magazynier.update(magazynier_params)
        format.html { redirect_to magazynier_url(@magazynier), notice: "Magazynier was successfully updated." }
        format.json { render :show, status: :ok, location: @magazynier }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @magazynier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /magazyniers/1 or /magazyniers/1.json
  def destroy
    @magazynier.destroy

    respond_to do |format|
      format.html { redirect_to magazyniers_url, notice: "Magazynier was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_magazynier
      @magazynier = Magazynier.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def magazynier_params
      params.require(:magazynier).permit(:Name, :Surname, :Salary, :Shift, :magazyn_id)
    end
end
