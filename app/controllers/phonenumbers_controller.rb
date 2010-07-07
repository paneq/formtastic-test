class PhonenumbersController < ApplicationController
  # GET /phonenumber
  # GET /phonenumber.xml
  def index
    @phonenumbers = Phonenumber.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @phonenumber }
    end
  end

  # GET /phonenumber/1
  # GET /phonenumber/1.xml
  def show
    @phonenumber = Phonenumber.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @phonenumber }
    end
  end

  # GET /phonenumber/new
  # GET /phonenumber/new.xml
  def new
    @phonenumber = Phonenumber.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @phonenumber }
    end
  end

  # GET /phonenumber/1/edit
  def edit
    @phonenumber = Phonenumber.find(params[:id])
  end

  # POST /phonenumber
  # POST /phonenumber.xml
  def create
    @phonenumber = Phonenumber.new(params[:phonenumber])

    respond_to do |format|
      if @phonenumber.save
        format.html { redirect_to(@phonenumber, :notice => 'Phonenumber was successfully created.') }
        format.xml  { render :xml => @phonenumber, :status => :created, :location => @phonenumber }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @phonenumber.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /phonenumber/1
  # PUT /phonenumber/1.xml
  def update
    @phonenumber = Phonenumber.find(params[:id])

    respond_to do |format|
      if @phonenumber.update_attributes(params[:phonenumber])
        format.html { redirect_to(@phonenumber, :notice => 'Phonenumber was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @phonenumber.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /phonenumber/1
  # DELETE /phonenumber/1.xml
  def destroy
    @phonenumber = Phonenumber.find(params[:id])
    @phonenumber.destroy

    respond_to do |format|
      format.html { redirect_to(phonenumber_url) }
      format.xml  { head :ok }
    end
  end
end
