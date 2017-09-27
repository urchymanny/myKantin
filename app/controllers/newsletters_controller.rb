class NewslettersController < ApplicationController

  # POST /newsletters
  # POST /newsletters.json
  def create
    @newsletter = Newsletter.new(newsletter_params)

    respond_to do |format|
      if @newsletter.save
        cookies[:saved_newsletter] = true
        format.html { redirect_to request.referer, notice: 'Newsletter was successfully created.' }
        format.json { render :show, status: :created, location: @newsletter }
      else
        if Newsletter.where(email: @newsletter.email).present?
          cookies[:saved_newsletter] = true
        end
        format.html { redirect_to request.referer }
        format.json { render json: @newsletter.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def newsletter_params
      params.require(:newsletter).permit(:email)
    end
end
