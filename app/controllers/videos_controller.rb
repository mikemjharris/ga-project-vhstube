class VideosController < ApplicationController

  def home

  end

  def index
    @genre_list = Video.all.map {|v| v.genre}.uniq
    if params[:filter] 
      @users_videos = Video.where(genre: params[:filter])
    else
      @users_videos = Video.order(:title)
    end
  end
  
  def new


  end

  def create
    Video.create(params["video"])

    redirect_to videos_path

  end

  def show

    @url = Video.find(params[:id]).url

  end

  def delete
    Video.find(params[:id]).destroy
    redirect_to videos_path
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    Video.find_by_id(params["id"]).update_attributes(params["video"])
    redirect_to videos_path
  end
end
