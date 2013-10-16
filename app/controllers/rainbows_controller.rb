class RainbowsController < ApplicationController
  # GET /rainbows
  # GET /rainbows.json
  def index
    @rainbows = Rainbow.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rainbows }
    end
  end

  # GET /rainbows/1
  # GET /rainbows/1.json
  def show
    @rainbow = Rainbow.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rainbow }
    end
  end

  # GET /rainbows/new
  # GET /rainbows/new.json
  def new
    @rainbow = Rainbow.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rainbow }
    end
  end

  # GET /rainbows/1/edit
  def edit
    @rainbow = Rainbow.find(params[:id])
  end

  # POST /rainbows
  # POST /rainbows.json
  def create
    @rainbow = Rainbow.new(params[:rainbow])

    respond_to do |format|
      if @rainbow.save
        format.html { redirect_to @rainbow, notice: 'Rainbow was successfully created.' }
        format.json { render json: @rainbow, status: :created, location: @rainbow }
      else
        format.html { render action: "new" }
        format.json { render json: @rainbow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rainbows/1
  # PUT /rainbows/1.json
  def update
    @rainbow = Rainbow.find(params[:id])

    respond_to do |format|
      if @rainbow.update_attributes(params[:rainbow])
        format.html { redirect_to @rainbow, notice: 'Rainbow was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rainbow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rainbows/1
  # DELETE /rainbows/1.json
  def destroy
    @rainbow = Rainbow.find(params[:id])
    @rainbow.destroy

    respond_to do |format|
      format.html { redirect_to rainbows_url }
      format.json { head :no_content }
    end
  end
end
