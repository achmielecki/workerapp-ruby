class DyrektorsController < ApplicationController
  before_action :set_dyrektor, only: %i[ show edit update destroy ]

  # GET /dyrektors or /dyrektors.json
  def index
    @dyrektors = Dyrektor.all
  end

  # GET /dyrektors/1 or /dyrektors/1.json
  def show
  end

  # GET /dyrektors/new
  def new
    @dyrektor = Dyrektor.new
  end

  # GET /dyrektors/1/edit
  def edit
  end

  # POST /dyrektors or /dyrektors.json
  def create
    @dyrektor = Dyrektor.new(dyrektor_params)

    respond_to do |format|
      if @dyrektor.save
        format.html { redirect_to dyrektor_url(@dyrektor), notice: "Dyrektor was successfully created." }
        format.json { render :show, status: :created, location: @dyrektor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dyrektor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dyrektors/1 or /dyrektors/1.json
  def update
    respond_to do |format|
      if @dyrektor.update(dyrektor_params)
        format.html { redirect_to dyrektor_url(@dyrektor), notice: "Dyrektor was successfully updated." }
        format.json { render :show, status: :ok, location: @dyrektor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dyrektor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dyrektors/1 or /dyrektors/1.json
  def destroy
    @dyrektor.destroy

    respond_to do |format|
      format.html { redirect_to dyrektors_url, notice: "Dyrektor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dyrektor
      @dyrektor = Dyrektor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dyrektor_params
      params.require(:dyrektor).permit(:Name, :Surname, :Salary, :magazyn_id)
    end
end
