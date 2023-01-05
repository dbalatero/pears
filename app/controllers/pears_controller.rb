class PearsController < ApplicationController
  before_action :set_pear, only: %i[ show edit update destroy ]

  PEARS = %w[
    https://snaped.fns.usda.gov/sites/default/files/seasonal-produce/2018-05/pears.jpg
    https://www.tastingtable.com/img/gallery/why-you-should-leave-the-skin-on-pears/l-intro-1653326060.jpg
    https://cdn.tasteatlas.com/images/ingredients/60eea3493ed944f7a4e6db7ff9b4765f.jpg
    http://cdn.shopify.com/s/files/1/2336/3219/products/shutterstock_1693201075_1024x1024.png?v=1621966032
    https://www.halegroves.com/images/xl/906-comice-pears_02.jpg
    https://mnhardy.umn.edu/sites/mnhardy.umn.edu/files/styles/folwell_full/public/2022-08/pears-banner.jpg?itok=7MMHsEhg
    https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fill,g_auto,w_1500,ar_3:2/k%2Farchive%2F45c348aabe206cafa9bd7361d9c0df5331f2f746
  ]

  def random
    @pear = Pear.all.sample
  end

  # GET /pears or /pears.json
  def index
    @pears = Pear.all
  end

  # GET /pears/1 or /pears/1.json
  def show
  end

  # GET /pears/new
  def new
    @pear = Pear.new
  end

  # GET /pears/1/edit
  def edit
  end

  # POST /pears or /pears.json
  def create
    @pear = Pear.new(pear_params)

    respond_to do |format|
      if @pear.save
        format.html { redirect_to pear_url(@pear), notice: "Pear was successfully created." }
        format.json { render :show, status: :created, location: @pear }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pear.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pears/1 or /pears/1.json
  def update
    respond_to do |format|
      if @pear.update(pear_params)
        format.html { redirect_to pear_url(@pear), notice: "Pear was successfully updated." }
        format.json { render :show, status: :ok, location: @pear }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pear.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pears/1 or /pears/1.json
  def destroy
    @pear.destroy

    respond_to do |format|
      format.html { redirect_to pears_url, notice: "Pear was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pear
      @pear = Pear.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pear_params
      params.require(:pear).permit(:url)
    end
end
