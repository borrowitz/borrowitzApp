class ProductsController < ApplicationController

    def index
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end

    def new
        @product = Product.new
    end

    def edit
        @product =Product.find(params[:id])
    end

    def create
        @product = Product.new(params[:product])
        if @product.save
            redirect_to @product, notice: 'Product successfully created.'
        else
            redirect_to @product
        end
    end

    def update
        @product =Product.find(params[:id])
        if @product.update_attributes(params[:product])
            redirect_to @product,notice: 'Product successfully updated.'
        else
            render action: "edit"
        end

        def destroy
            Product.find(params[:id]).destroy
            redirect_to product_url, notice: 'Product deleted'
        end
    end
end
