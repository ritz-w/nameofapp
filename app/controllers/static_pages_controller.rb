class StaticPagesController < ApplicationController
  
  def index
  end

  def landing_page
    @products = Product.all
  end

  def index_by_date
    @products = Product.order('year_made DESC')
  end

  def index_by_artist
    @products = Product.order(:artist)
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(:from => @email,
        :to => 'ritz.wu@outlook.com',
        :subject => "A new contact form message from #{@name}",
        :body => @message).deliver_now
  end

  def references
  end

end
