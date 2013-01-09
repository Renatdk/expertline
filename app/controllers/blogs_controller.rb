# coding: utf-8
class BlogsController < ApplicationController
def index
	@blogs=Blog.all
	@blog=Blog.last
end
def show
	@blogs=Blog.all
    @blog = Blog.find(params[:id])
end
end
