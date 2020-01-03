class SearchController < ApplicationController
  def index
  	search_key = params[:q]
  	elastic_search_results = Search::ElasticSearch.new.search(search_key)
  	render json: elastic_search_results.map { |e| e.attributes }
  end
end
