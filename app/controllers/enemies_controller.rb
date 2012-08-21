class EnemiesController < ApplicationController
  # GET /enemies
  # GET /enemies.json
  def index
    @enemies = Enemy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @enemies }
    end
  end

  # GET /enemies/1
  # GET /enemies/1.json
  def show
    @enemy = Enemy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @enemy }
    end
  end

  # GET /enemies/new
  # GET /enemies/new.json
  def new
    @enemy = Enemy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @enemy }
    end
  end

  # GET /enemies/1/edit
  def edit
    @enemy = Enemy.find(params[:id])
  end

  # POST /enemies
  # POST /enemies.json
  def create
    @enemy = Enemy.new(params[:enemy])

    respond_to do |format|
      if @enemy.save
        format.html { redirect_to @enemy, notice: 'Enemy was successfully created.' }
        format.json { render json: @enemy, status: :created, location: @enemy }
      else
        format.html { render action: "new" }
        format.json { render json: @enemy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /enemies/1
  # PUT /enemies/1.json
  def update
    @enemy = Enemy.find(params[:id])

    respond_to do |format|
      if @enemy.update_attributes(params[:enemy])
        format.html { redirect_to @enemy, notice: 'Enemy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @enemy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enemies/1
  # DELETE /enemies/1.json
  def destroy
    @enemy = Enemy.find(params[:id])
    @enemy.destroy

    respond_to do |format|
      format.html { redirect_to enemies_url }
      format.json { head :no_content }
    end
  end
end
