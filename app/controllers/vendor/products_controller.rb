class Vendor::ProductsController < VendorsController
	before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

	def index
	  @collection = Vendor::Product.all
	end

	def new
		@product = Vendor::Product.new
	end

	def show;	end

	def edit;	end

	def update
		respond_to do |format|
      if @product.update(products_params)
        format.html { redirect_to vendor_product_path(@product), notice: 'product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
	end

	def create
    @product = Vendor::Product.create(products_params)
    respond_to do |format|
      if @product.save
        format.html { redirect_to vendor_product_path(@product), notice: 'product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
	end

	def destroy
		@product.destroy
    respond_to do |format|
      format.html { redirect_to vendor_products_url, notice: 'product was successfully destroyed.' }
      format.json { head :no_content }
    end
	end

	private
	def set_product
    @product = Vendor::Product.find(params[:id])
	end

  def products_params
    params.require(:vendor_product).permit!
  end
end
