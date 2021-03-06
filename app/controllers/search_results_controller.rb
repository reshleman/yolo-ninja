class SearchResultsController < ApplicationController
  skip_before_action :require_login, only: :show

  def show
    @search_query = params[:event_name]
    @search_results = Event.current.search(@search_query).by_name
  end
end
