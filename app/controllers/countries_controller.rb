
class CountriesController < ApplicationController

  def search
    @country_list = Country.names
    if not params[:country_name].nil?
      @country = Country.find_by_name params[:country_name]
      @stories =  @country.recent_stories
      @more_stories = @country.all_stories
    end
  end

end
