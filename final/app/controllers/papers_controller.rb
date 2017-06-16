class PapersController < ApplicationController
  before_action :set_paper, only: [:show, :edit, :update, :destroy]

  def index
    @papers = Paper.all
  end

  def show
  end

  def new
    @paper = Paper.new
  end

  def edit
  end

  def create
    @paper = Paper.new(paper_params)

    respond_to do |format|
      if @paper.save
        format.html { redirect_to @paper, notice: 'Paper was successfully created.' }
        format.json { render :show, status: :created, location: @paper }
      else
        format.html { render :new }
        format.json { render json: @paper.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @paper.update(paper_params)
        format.html { redirect_to @paper, notice: 'Paper was successfully updated.' }
        format.json { render :show, status: :ok, location: @paper }
      else
        format.html { render :edit }
        format.json { render json: @paper.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @paper.destroy
    respond_to do |format|
      format.html { redirect_to papers_url, notice: 'Paper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_paper
      @paper = Paper.find(params[:id])
    end
    def paper_params
      params.require(:paper).permit(:name, :student_id, :score)
    end
end
