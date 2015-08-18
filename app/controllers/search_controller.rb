class SearchController < ApplicationController
  def search
    @result = find_quip(params[:context], params[:target], params[:setting])
  end

  private

  def find_quip(context, target, setting)
    unless Quip.where(context_id: context, target_id: target, setting_id: setting).empty?
      Quip.where(context_id: context, target_id: target, setting_id: setting).sample
    end
  end
end
