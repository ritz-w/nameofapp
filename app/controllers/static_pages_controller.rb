class StaticPagesController < ApplicationController
  def index
  end

  def landing_page
    @products = Product.all
  end

    def index_by_date
    @products = Product.all
  end

      def index_by_artist
    @products = Product.all
  end

    def references
  end

end
