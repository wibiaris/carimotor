class MotorController < ApplicationController

	def index
		@motor = Motor.all.order("created_at DESC")
	end

	def new

	end

	def create
	end

	def edit
	end

	def update
	end

	def show
	end

	def destroy
	end

	private

	def motor_params
		params.required(:motor).permit(:platno,:merk_id,:type_id,:harga,:warna,:tahun,,:image)
	end

	def find_motor
		@motor = Motor.find(params[:id])
	end

end
