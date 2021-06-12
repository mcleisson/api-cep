class Api::V1::SearchCodeController < Devise::SessionsController
    before_action :authenticate_user!#, except: [:show]
    def show
        @cep = Cep.new(params[:cep])
        render json: @cep
    end
end
