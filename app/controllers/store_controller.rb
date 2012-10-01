require 'will_paginate/array'

class StoreController < ApplicationController
  def index
    # if params.blank?
      # @products = Product.all
      # return @products
    # end
    
    if params[:category] == "All"
      @products = Product.all.paginate(:page => params[:page], :per_page => 8)
      return @products
    end
        
    @products = Product.find_all_by_category(params[:category])
     #@products = Product.all(:conditions => { :category => params[:category]})
     if !@products.nil?
        @products = @products.paginate(:page => params[:page], :per_page => 8)
     end
     return @products
  end
end
