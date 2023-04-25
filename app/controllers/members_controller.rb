class MembersController < ApplicationController
  before_action :set_member, only: %i[ show edit update destroy ]

  # GET /members or /members.json
  def index
    @members = Member.all
  end

  # GET /members/1 or /members/1.json
  def show
  end

  # GET /members/new
  def new
    @member = Member.new
    authorize @member
  end

  # GET /members/1/edit
  def edit
    authorize @member
  end

  # POST /members or /members.json
  def create
    @member = Member.new(member_params)
    authorize @member

    respond_to do |format|
      if @member.save
        format.html { redirect_to members_url, notice: "Tag sikeresen hozzáadva." }
        format.json { render :show, status: :created, location: @member }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members/1 or /members/1.json
  def update
    authorize @member
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to members_url, notice: "A tag módosítása sikeres." }
        format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members/1 or /members/1.json
  def destroy
    authorize @member
    @member.destroy

    respond_to do |format|
      format.html { redirect_to members_url, notice: "Tag sikeresen törölve." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def member_params
      params.require(:member).permit(:name, :rank, :bio, :image)
    end
end
