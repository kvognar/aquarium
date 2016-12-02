class ImpressionsController < ApplicationController

  def index

  end

  def show
    @impression = Impression.find(params[:id])
  end

  def new
    @impression = Impression.new
  end

  def create
    @impression = current_user.impressions.new(impression_params)
    Impression.transaction do
      @impression.work = Work.find_or_create_by(
          title: params[:impression][:title],
          artist: Artist.find_or_create_by(name: params[:impression][:artist])
      )
      # debugger
      if @impression.save
        flash[:success] = "Huzzah!"
        redirect_to @impression
      else
        flash.now[:errors] = @impression.errors.full_messages
        render :new
      end
    end
  end

  private

  def impression_params
    params.require(:impression).permit([:reflection, :spoiler_reflection, :started_at, :finished_at])
  end


end
