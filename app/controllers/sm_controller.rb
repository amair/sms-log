class SmController < ApplicationController

  before_action :set_sm, only: [:show]

  # GET /sm
  def index
    @sm = Sm.all
    #json_response(@sm)
  end

  # POST /sm
  def create
    @sm = Sm.create!(sm_params)
    json_response(@sm)
  end

  # GET /sm/:id
  def show
    json_response(@sm)
  end
 
  private

  def sm_params
    # whitelist params
    #params.permit(:mobile, :content, :username, :timestamp, :digest)
    #Allow all params for debugging
    params.permit!
  end

  def set_sm
    @sm = Sm.find(params[:id])
  end
end