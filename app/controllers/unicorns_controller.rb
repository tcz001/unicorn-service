class UnicornsController < ApplicationController
  # GET /unicorns
  # GET /unicorns.json
  def index
    @unicorns = Unicorn.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @unicorns }
    end
  end

  # GET /unicorns/1
  # GET /unicorns/1.json
  def show
    @unicorn = Unicorn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @unicorn }
    end
  end

  # GET /unicorns/new
  # GET /unicorns/new.json
  def new
    @unicorn = Unicorn.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @unicorn }
    end
  end

  # GET /unicorns/1/edit
  def edit
    @unicorn = Unicorn.find(params[:id])
  end

  # POST /unicorns
  # POST /unicorns.json
  def create
    @unicorn = Unicorn.new(params[:unicorn])

    respond_to do |format|
      if @unicorn.save
        format.html { redirect_to @unicorn, notice: 'Unicorn was successfully created.' }
        format.json { render json: @unicorn, status: :created, location: @unicorn }
      else
        format.html { render action: "new" }
        format.json { render json: @unicorn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /unicorns/1
  # PUT /unicorns/1.json
  def update
    @unicorn = Unicorn.find(params[:id])

    respond_to do |format|
      if @unicorn.update_attributes(params[:unicorn])
        format.html { redirect_to @unicorn, notice: 'Unicorn was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @unicorn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unicorns/1
  # DELETE /unicorns/1.json
  def destroy
    @unicorn = Unicorn.find(params[:id])
    @unicorn.destroy

    respond_to do |format|
      format.html { redirect_to unicorns_url }
      format.json { head :no_content }
    end
  end
end
