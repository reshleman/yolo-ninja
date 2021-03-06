class ClosedEventsDashboardController < ApplicationController
  skip_before_action :require_login, only: [:show]

  def show
    @events = Event.closed.by_closing_date
  end
end
