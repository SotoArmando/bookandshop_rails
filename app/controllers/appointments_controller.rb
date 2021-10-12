class AppointmentsController < ApplicationController
    before_action :authorize_request, except: [:index, :show]
    before_action :set_item, only: [:show, :update, :destroy]
    def create
        @user = User.find(appointment_params[:user_id])
        if (@user)
            @appointment = @user.appointment.create(appointment_params.except(:payment_method,:bookeditem,:cartitem ))
           
            if appointment_params.key?(:bookeditem)
                @bookeditem = @appointment.bookeditem.create(appointment_params[:bookeditem].values)
            elsif appointment_params.key?(:cartitem)
                @cartitem = @appointment.cartitem.create(appointment_params[:cartitem].values)
            end

            if @appointment.save
                render json: @appointment, status: :created, location: @appointment
            else
                render json: @appointment.errors, status: :unprocessable_entity
            end
        else    
            render status: :unprocessable_entity
        end
    end
    def show
        render json: @appointment, include: [:cartitem, :bookeditem]
    end
    def destroy
        @appointment.destroy
        redirect_to action: "index"
    end

    private
        def appointment_params
            params.permit(:payment_method, :user_id, :name, :cardnumber, :expiration, :cvv, cartitem: [:item_id], bookeditem: [:item_id, :user_id, :created_at, :updated_at, :appointment_id])
        end
        def set_item
            @appointment = Appointment.find(params[:id])
        end
end
