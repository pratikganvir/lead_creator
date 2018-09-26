class LeadsController < ApplicationController
	skip_before_action :verify_authenticity_token

  def create
    lead = Lead.create(lead_params)
    render json: {success: lead.valid?, errors: lead.errors.full_messages}
  end

  private

  def lead_params
    params.require(:lead).permit(:first_name,:last_name,:email)
  end
end
