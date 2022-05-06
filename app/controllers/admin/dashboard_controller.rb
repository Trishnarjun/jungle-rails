class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['USERNAME'].to_str, password: ENV['PASSWORD'].to_str
  def show
  end
end
