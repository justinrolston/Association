class ItemsController < ApplicationController
  
  def index
    # For URL like /orders/1/items
    # Get the order with id=1
    @order = Order.find(params[:order_id])

    # Access all items for that order
    @items = @order.items
    
  end

  # GET /orders/1/items/2
  def show
    @order = Order.find(params[:order_id])

    # For URL like /orders/1/items/2
    # Find an item in orders 1 that has id=2
    @item = @order.items.find(params[:id])
  end

  # GET /orders/1/items/new
  def new
    @order = Order.find(params[:order_id])
    # Associate an item object with order 1
    @item = @order.items.build
  end

  def create
    @order = Order.find(params[:order_id])
    @item = @order.items.build(params[:item])
    if @item.save
      # Save the item successfully
      redirect_to order_item_url(@order, @item)
    else
      render :action => "new"
    end
  end

  # GET /orders/1/items/2/edit
  def edit
    @order = Order.find(params[:order_id])

    # For URL like /orders/1/items/2/edit
    # Get item id=2 for order 1
    @item = @order.items.find(params[:id])
  end
  
  # DELETE /orders/1/items/2
  def destroy
    @order = Order.find(params[:order_id])
    @item = Item.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html { redirect_to order_items_path(@order) }
      format.xml  { head :ok }
    end
  end

end
