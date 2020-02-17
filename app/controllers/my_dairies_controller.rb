class MyDairiesController < ApplicationController
  before_action :set_my_dairy, only: [:show, :edit, :update, :destroy]

  # GET /my_dairies
  # GET /my_dairies.json
  def index
    @my_dairies = MyDairy.all
  end

  # GET /my_dairies/1
  # GET /my_dairies/1.json
  def show
  end

  # GET /my_dairies/new
  def new
    @my_dairy = MyDairy.new
  end

  # GET /my_dairies/1/edit
  def edit
  end

  # POST /my_dairies
  # POST /my_dairies.json
  def create
    content = "朝食は" + params[:my_dairy][:question1] + "\n" + "昼食は" + params[:my_dairy][:question2] + "\n" + "夕食は" + params[:my_dairy][:question3]
    @my_dairy = MyDairy.new(content: content)

    respond_to do |format|
      if @my_dairy.save
        format.html { redirect_to @my_dairy, notice: 'My dairy was successfully created.' }
        format.json { render :show, status: :created, location: @my_dairy }
      else
        format.html { render :new }
        format.json { render json: @my_dairy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_dairies/1
  # PATCH/PUT /my_dairies/1.json
  def update
    respond_to do |format|
      if @my_dairy.update(my_dairy_params)
        format.html { redirect_to @my_dairy, notice: 'My dairy was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_dairy }
      else
        format.html { render :edit }
        format.json { render json: @my_dairy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_dairies/1
  # DELETE /my_dairies/1.json
  def destroy
    @my_dairy.destroy
    respond_to do |format|
      format.html { redirect_to my_dairies_url, notice: 'My dairy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_dairy
      @my_dairy = MyDairy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def my_dairy_params
      params.require(:my_dairy).permit(:content)
    end
end
