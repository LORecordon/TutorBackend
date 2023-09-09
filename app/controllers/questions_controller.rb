class QuestionsController < ApplicationController
    before_action :authenticate_user!
    before_action :authenticate_my_token
    before_action :set_question, only: [:show, :edit]

    def index
        @questions = Question.all
        render json: @questions
    end
    
    def edit
    end

    def show
        render json: @question
    end

    def find
        @questions = Question.where(topic: params[:topic], difficulty: params[:difficulty])
        render json: @questions
    end


    private

    def set_question
        @question = Question.find(params[:id])
    end

    def authenticate_my_token
        puts "authenticajbcpw"
        auth_token = request.headers['Authorization'].split(" ")[1]
        if auth_token.present?
            begin
                decoded = JWT.decode(auth_token, Rails.application.credentials.fetch(:secret_key_base), true, algorithm: 'HS256')
                payload = decoded.first
                puts payload
                user_id = payload['sub']
                @user = User.find(user_id)
                puts @user.email
                return true
            rescue JWT::DecodeError => e
                render json: {error: "Invalid token"}, status: :unauthorized
                return false
            end

        else
            render json: {error: "Token missing"}, status: :unauthorized
            return false
        end
    end
    
end
