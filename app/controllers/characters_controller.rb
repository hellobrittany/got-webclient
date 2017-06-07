class CharactersController < ApplicationController

	def index
		@characters = Unirest.get("localhost:3000/api/v1/characters.json").body
	end

	def new
		
	end

	def create
		character = Unirest.post("ocalhost:3000/api/v1/characters.json?first_name=#{params[:first_name]}&house=#{params[:house]}&city=#{params[:city]}", 
														headers: {"Accept" => 'application/json'}
														).body
		redirect_to "/characters/#{character['id']}"
	end

	def show
		@character = Unirest.get("localhost:3000/api/v1/characters/#{params[:id]}.json").body
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end

end
