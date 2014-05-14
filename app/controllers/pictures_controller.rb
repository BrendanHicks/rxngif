class PicturesController < ApplicationController
  def show

    picture_id = params[:id]
      @picture = Picture.find(picture_id)
      @source = @picture.source
      @caption = @picture.caption

  end

  def index

    @picture_table = Picture.all

  end

  def new



  end

  def create

    @p = Picture.new
    @p.caption = params[:caption]
    @p.source = params[:source]
    @p.save

    redirect_to("http://localhost:3000/all_pictures")

  end

  def destroy

    picture_id = params[:id]

    Picture.find(picture_id).destroy

    redirect_to("http://localhost:3000/all_pictures")

  end

  def edit

    picture_id = params[:id]

    @picture = Picture.find(picture_id)

  end

  def update

    picture_id = params[:id]
    @p = Picture.find(picture_id)
    @p.caption = params[:caption]
    @p.source = params[:source]
    @p.save

    redirect_to("http://localhost:3000/picture_details/#{picture_id}")


  end

end
