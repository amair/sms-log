class SmController < ApplicationController

  before_action :set_sm, only: [:show]

  # GET /sm
  def index
    @sm = Sm.all
  end

  # POST /sm
  def create
    @sm = Sm.create!(sm_params)
    
    str_params = sm_params.stringify_keys
    
    computed_md5=compute_md5(str_params['username'] << "PASSWORD" << str_params['timestamp'])
    Rails.logger.warn "Computed the MD5 as #{computed_md5}" 
    render plain: "SUCCESS"
  end

  # GET /sm/:id
  def show
    json_response(@sm)
  end
  

 
  private

  def sm_params
    # whitelist params
    params.permit(:mobile, :content, :username, :timestamp, :digest)
  end

  def set_sm
    @sm = Sm.find(params[:id])
  end
  
  def compute_md5 message
    md5 = Digest::MD5.new  
    md5.hexdigest  message #base64digest 
  end
  


end