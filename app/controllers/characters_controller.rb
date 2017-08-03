class CharactersController < ApplicationController

   def show
     @character = Character.find(params[:id])
   end

   def edit
     @house = House.find(params[:house_id])
     @character = Character.find(params[:id])
   end

   def update
     @house = House.find(params[:house_id])
     @character = Character.find(params[:id])
     @character.update!(character_params)
     flash[:notice] = "#{@character.name} thats a great addition"

     redirect_to house_character_path(@house, @character)
   end

   def new
     @house = House.find(params[:house_id])
     @character = Character.new
   end

   def create
     @house = House.find(params[:house_id])
     @character = @house.characters.create(character_params)
     flash[:notice] = "#{@character.name} welcome."

     redirect_to house_path(@house)
   end

   def destroy
     @house = House.find(params[:house_id])
     @character = Character.find(params[:id])
     @character.destroy!
     flash[:notice] = "#{@character.name} Off with his head."

     redirect_to house_character_path(@house, @character)
   end

 private
   def character_params
     params.require(:character).permit(:name, :title, :quote, :img_url)
   end

 end
