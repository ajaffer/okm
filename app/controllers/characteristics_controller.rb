class CharacteristicsController < ApplicationController
  # GET /characteristics
  # GET /characteristics.xml
  def index
    @characteristics = Characteristic.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @characteristics }
    end
  end

  # GET /characteristics/1
  # GET /characteristics/1.xml
  def show
    @characteristic = Characteristic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @characteristic }
    end
  end

  # GET /characteristics/new
  # GET /characteristics/new.xml
  def new
    @characteristic = Characteristic.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @characteristic }
    end
  end

  # GET /characteristics/1/edit
  def edit
    @characteristic = Characteristic.find(params[:id])
  end

  # POST /characteristics
  # POST /characteristics.xml
  def create
    @characteristic = Characteristic.new(params[:characteristic])

    respond_to do |format|
      if @characteristic.save
        format.html { redirect_to(@characteristic, :notice => 'Characteristic was successfully created.') }
        format.xml  { render :xml => @characteristic, :status => :created, :location => @characteristic }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @characteristic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /characteristics/1
  # PUT /characteristics/1.xml
  def update
    @characteristic = Characteristic.find(params[:id])

    respond_to do |format|
      if @characteristic.update_attributes(params[:characteristic])
        format.html { redirect_to(@characteristic, :notice => 'Characteristic was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @characteristic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /characteristics/1
  # DELETE /characteristics/1.xml
  def destroy
    @characteristic = Characteristic.find(params[:id])
    @characteristic.destroy

    respond_to do |format|
      format.html { redirect_to(characteristics_url) }
      format.xml  { head :ok }
    end
  end
end
