class MotorController < ApplicationController

	def index
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
		params.required(:motor).permit
	end

end
