class SiteContentController < ApplicationController
  before_action :set_content
  before_action :require_admin

  def edit
    @back_path = params[:back_path] || root_url
  end

  def update
    if @site_content.update(site_content_params)
      redirect_back fallback_location: root_url, notice: "Oldal sikeresen módosítva."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_content
    @site_content = SiteContent.find_or_create_by(id: params[:id])
  end

  def site_content_params
    params.require(:site_content).permit(:content, :title)
  end
end
