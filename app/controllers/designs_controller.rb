class DesignsController < ApplicationController
  before_action :set_design, only: %i[show edit update destroy]

  # GET /designs or /designs.json
  def index
    @designs = Design.order(created: :desc)
  end

  # GET /designs/1 or /designs/1.json
  def show; end

  # GET /designs/new
  def new
    @design = Design.new
    authorize @design
  end

  # GET /designs/1/edit
  def edit
    authorize @design
  end

  # POST /designs or /designs.json
  def create
    @design = Design.new(design_params)
    authorize @design

    respond_to do |format|
      if @design.save
        format.html { redirect_to designs_url, notice: 'Folt sikeresen létrehozva.' }
        format.json { render :show, status: :created, location: @design }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @design.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /designs/1 or /designs/1.json
  def update
    authorize @design
    respond_to do |format|
      if @design.update(design_params)
        format.html { redirect_to designs_url, notice: 'Folt sikeresen frissítve.' }
        format.json { render :show, status: :ok, location: @design }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @design.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /designs/1 or /designs/1.json
  def destroy
    authorize @design
    @design.destroy

    respond_to do |format|
      format.html { redirect_to designs_url, notice: 'Folt sikeresen törölve.' }
      format.json { head :no_content }
    end
  end

  def edit_labels
    @design = Design.find(params[:design_id])
    authorize @design
    @active_tags = @design.labels
    active_ids = @design.labels.pluck(:id)
    @inactive_tags = Label.where.not(id: active_ids)
  end

  def add_label
    design = Design.find(params[:design_id])
    authorize design
    label = Label.find(params[:label_id])
    design.labels << label
    if design.save
      redirect_to design_edit_labels_url(design), notice: 'Címke sikeresen hozzáadva.'
    else
      redirect_to design_edit_labels_url(design), alert: 'Címke hozzáadása sikertelen.'
    end
  end

  def remove_label
    design = Design.find(params[:design_id])
    authorize design
    label = design.labels.find(params[:label_id])
    design.labels.delete(label)
    if design.save
      redirect_to design_edit_labels_url(design), notice: 'Címke sikeresen törölve.'
    else
      redirect_to design_edit_labels_url(design), alert: 'Címke törlése sikertelen.'
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_design
    @design = Design.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def design_params
    params.require(:design).permit(:name, :description, :created, :image)
  end
end
