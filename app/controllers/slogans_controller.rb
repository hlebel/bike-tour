class SlogansController < ApplicationController
  before_action :set_slogan, only: %i[ show edit update destroy ]

  # GET /slogans or /slogans.json
  def index
    @slogan = Slogan.new
  end





  # POST /slogans or /slogans.json
  def create

    @slogan = Slogan.new(slogan_params)

    respond_to do |format|
      if @slogan.save
        msg = { :status => "ok", :message => "Your slogan has been submitted!" }
        format.json { render :json => msg  }
      else
        format.json { render json: @slogan.errors, status: :unprocessable_entity }
      end
    end
  end




  private

    # Only allow a list of trusted parameters through.
    def slogan_params
      params.require(:slogan).permit(:first_name, :last_name, :email, :suggestion)
    end
end
