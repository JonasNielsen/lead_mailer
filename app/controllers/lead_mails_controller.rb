class LeadMailsController < ApplicationController
  # GET /lead_mails
  # GET /lead_mails.json
  def index
    @lead_mails = LeadMail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lead_mails }
    end
  end

  # GET /lead_mails/1
  # GET /lead_mails/1.json
  def show
    @lead_mail = LeadMail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lead_mail }
    end
  end

  # GET /lead_mails/new
  # GET /lead_mails/new.json
  def new
    @lead_mail = LeadMail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lead_mail }
    end
  end

  # GET /lead_mails/1/edit
  def edit
    @lead_mail = LeadMail.find(params[:id])
  end

  # POST /lead_mails
  # POST /lead_mails.json
  def create
    @lead_mail = LeadMail.new(params[:lead_mail])

    respond_to do |format|
      if @lead_mail.save
        format.html { redirect_to @lead_mail, notice: 'Lead mail was successfully created.' }
        format.json { render json: @lead_mail, status: :created, location: @lead_mail }
      else
        format.html { render action: "new" }
        format.json { render json: @lead_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lead_mails/1
  # PUT /lead_mails/1.json
  def update
    @lead_mail = LeadMail.find(params[:id])

    respond_to do |format|
      if @lead_mail.update_attributes(params[:lead_mail])
        format.html { redirect_to @lead_mail, notice: 'Lead mail was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @lead_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lead_mails/1
  # DELETE /lead_mails/1.json
  def destroy
    @lead_mail = LeadMail.find(params[:id])
    @lead_mail.destroy

    respond_to do |format|
      format.html { redirect_to lead_mails_url }
      format.json { head :ok }
    end
  end
end
