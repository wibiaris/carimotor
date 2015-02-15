class MotorsController < ApplicationController
	before_action :find_motor, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@motor = Motor.all.order("created_at DESC")
	end

	def new
		@motor = current_user.motor.build

	end

	def create
		@motor = current_user.motor.build(motor_params)

		if @motor.save
			redirect_to @motor, notice: "Successfully posting new ads"
		else
			render 'new'
		end
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
		params.required(:motor).permit(:platno,:merk_id,:type_id,:harga,:warna,:tahun,:image)
	end

	def find_motor
		@motor = Motor.find(params[:id])
	end
end
