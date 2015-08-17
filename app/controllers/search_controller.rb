class SearchController < ApplicationController
  def search
    @result = find_quip(params[:context], params[:target])
  end

  private

  def find_quip(context, target)
    unless Quip.where(context_id: context, target_id: target).empty?
      Quip.where(context_id: context, target_id: target).sample
    end
  end
end
