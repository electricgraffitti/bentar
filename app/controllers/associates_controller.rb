class AssociatesController < ApplicationController
  
  before_filter :require_admin
  
  # GET /associates
  # GET /associates.xml
  def index
    @associates = Associate.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @associates }
    end
  end

  # GET /associates/1
  # GET /associates/1.xml
  def show
    @associate = Associate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @associate }
    end
  end

  # GET /associates/new
  # GET /associates/new.xml
  def new
    @associate = Associate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @associate }
    end
  end

  # GET /associates/1/edit
  def edit
    @associate = Associate.find(params[:id])
  end

  # POST /associates
  # POST /associates.xml
  def create
    @associate = Associate.new(params[:associate])

    respond_to do |format|
      if @associate.save
        flash[:notice] = 'Associate was successfully created.'
        format.html { redirect_to(@associate) }
        format.xml  { render :xml => @associate, :status => :created, :location => @associate }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @associate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /associates/1
  # PUT /associates/1.xml
  def update
    @associate = Associate.find(params[:id])

    respond_to do |format|
      if @associate.update_attributes(params[:associate])
        flash[:notice] = 'Associate was successfully updated.'
        format.html { redirect_to(@associate) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @associate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /associates/1
  # DELETE /associates/1.xml
  def destroy
    @associate = Associate.find(params[:id])
    @associate.destroy

    respond_to do |format|
      format.html { redirect_to(associates_url) }
      format.xml  { head :ok }
    end
  end
end
