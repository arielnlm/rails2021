class BookstoreInventoriesController < ApplicationController
  before_action :set_bookstore_inventory, only: [:show, :edit, :update, :destroy]
  before_action :correct_user,   only: [:index, :edit, :update, :destroy, :new]
  # GET /bookstore_inventories
  # GET /bookstore_inventories.json
  def index
    @bookstore_inventories = BookstoreInventory.all
  end

  def correct_user
    redirect_to(root_url) unless is_admin?
  end
  # GET /bookstore_inventories/1
  # GET /bookstore_inventories/1.json
  def show
  end

  # GET /bookstore_inventories/new
  def new
    @bookstore_inventory = BookstoreInventory.new
  end

  # GET /bookstore_inventories/1/edit
  def edit
  end

  # POST /bookstore_inventories
  # POST /bookstore_inventories.json
  def create
    @bookstore_inventory = BookstoreInventory.new(bookstore_inventory_params)

    respond_to do |format|
      if @bookstore_inventory.save
        format.html { redirect_to @bookstore_inventory, notice: 'Bookstore inventory was successfully created.' }
        format.json { render :show, status: :created, location: @bookstore_inventory }
      else
        format.html { render :new }
        format.json { render json: @bookstore_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookstore_inventories/1
  # PATCH/PUT /bookstore_inventories/1.json
  def update
    respond_to do |format|
      if @bookstore_inventory.update(bookstore_inventory_params)
        format.html { redirect_to @bookstore_inventory, notice: 'Bookstore inventory was successfully updated.' }
        format.json { render :show, status: :ok, location: @bookstore_inventory }
      else
        format.html { render :edit }
        format.json { render json: @bookstore_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookstore_inventories/1
  # DELETE /bookstore_inventories/1.json
  def destroy
    @bookstore_inventory.destroy
    respond_to do |format|
      format.html { redirect_to bookstore_inventories_url, notice: 'Bookstore inventory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookstore_inventory
      @bookstore_inventory = BookstoreInventory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bookstore_inventory_params
      params.require(:bookstore_inventory).permit(:book_id, :bookstore_id, :price, :quantity)
    end
end
