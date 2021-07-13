class TestsController < ApplicationController
  before_action :set_test, only: %i[show edit update destroy]
  before_action :react, only: %i[index show new edit]
  def index
    @tests = Test.all.to_json(include: { children: { include: :grand_children } })
    @some_stuff = { thing: 10, bling: 6 }
  end

  def show; end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new
  end

  def edit; end

  def update; end

  def destroy; end

  private

  def react
    @use_react = true
  end

  def set_test
    @test = Test.find(params[:id])
  end
end
