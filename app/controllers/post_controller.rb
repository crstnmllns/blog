class PostController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard

  def index
    @post = Post.all.order_by_date
  end

  def dashboard

  end

  def create
    @post =  Post.new(title: params[:title], image_url: params[:image_url], content: params[:content])

    if @post.content.include?("spoiler")
      @post.content.slice!("spoiler")
    end
    @post.save

  end
end
