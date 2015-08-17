class ContextsController < ApplicationController
  before_action :set_context, only: [:show, :edit, :update, :destroy]
  before_action :set_target, only: [:show, :edit, :update, :destroy]

  # GET /contexts
  # GET /contexts.json
  def index
    @contexts = Context.all
    @targets = Target.all
  end

  # GET /contexts/1
  # GET /contexts/1.json
  def show
  end

  # GET /contexts/new
  def new
    @context = Context.new
    @target = Target.new
  end

  # GET /contexts/1/edit
  def edit
  end

  # POST /contexts
  # POST /contexts.json
  def create
    @context = Context.new(context_params)
    @target = Target.new(target_params)

    respond_to do |format|
      if @context.save
        format.html { redirect_to @context, notice: 'Context was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  respond_to do |format|
    if @target.save
      format.html { redirect_to @target, notice: 'Target was successfully created.' }
    else
      format.html { render :new }
    end
  end

  # PATCH/PUT /contexts/1
  # PATCH/PUT /contexts/1.json
  def update
    respond_to do |format|
      if @context.update(context_params)
        format.html { redirect_to @context, notice: 'Context was successfully updated.' }
        format.json { render :show, status: :ok, location: @context }
      else
        format.html { render :edit }
        format.json { render json: @context.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contexts/1
  # DELETE /contexts/1.json
  def destroy
    @context.destroy
    respond_to do |format|
      format.html { redirect_to contexts_url, notice: 'Context was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_context
      @context = Context.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def context_params
      params.require(:context).permit(:situation)
    end

    def set_target
      @target = Target.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def target_params
      params.require(:target).permit(:person)
    end
end
