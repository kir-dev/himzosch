require 'csv'
class EnquiryController < ApplicationController
  before_action :require_login
  before_action :require_admin, only: [:export]

  def set
    @item = Picture.find params[:item_id]
    @enq = Enquiry.find_by(user: current_user, picture: @item)

    return redirect_back fallback_location: picture_url(@item), alert: 'Már régebben jelezted az érdeklődésed' if @enq.present?

    @enq = Enquiry.new(user: current_user, picture: @item)
    if @enq.save
      redirect_to picture_url(@item), notice: 'Érdeklődésedet sikeresen jelezted'
    else
      redirect_to picture_url(@item), alert: 'Valami hiba csúszott a rendszerbe, próbáld újra'
    end
  end

  def unset
    @item = Picture.find params[:item_id]
    @enq = Enquiry.find_by(user: current_user, picture: @item)

    return redirect_back fallback_location: picture_url(@item), alert: 'Már régebben jelezted az érdeklődésed' unless @enq.present?

    if @enq.destroy
      redirect_to picture_url(@item), notice: 'Érdeklődésedet sikeresen visszavontad'
    else
      redirect_to picture_url(@item), alert: 'Valami hiba csúszott a rendszerbe, próbáld újra'
    end
  end

  def export
    @item = Picture.find params[:item_id]
    @enquires = Enquiry.includes(:picture, :user).where(picture: @item)

    respond_to do |format|
      format.csv do
        response.headers['Content-Type'] = 'text/csv'
        response.headers['Content-Disposition'] = "attachment; filename=export.csv"
      end
    end
  end
end
