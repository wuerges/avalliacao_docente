class AnswersController < ApplicationController
  before_action :set_offer
  before_action :set_answer, only: [:show, :edit, :update, :destroy]

  # GET /answers
  # GET /answers.json
  def index
    if logged_in?
      @answers = @offer.answers
    else
      redirect_to '/login'
    end
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
    if logged_in?
    else
      redirect_to '/login'
    end
  end

  # GET /answers/new
  def new
    @answer = Answer.new(offer: @offer)
  end

  # POST /answers
  # POST /answers.json
  def create
    @answer = @offer.answers.new(answer_params)

    respond_to do |format|
      if @answer.save
        format.html { redirect_to [@offer, @answer], notice: 'Answer was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer
      @offer = Offer.find_by(secure_id: params[:offer_id])
    end
    def set_answer
      @answer = Answer.find_by(secure_id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:offer_id, :a01, :a02, :a03, :a04, :a05, :a06, :a07, :a08, :a09, :a10, :a11, :a12, :a13, :a14, :comment)
    end
end
