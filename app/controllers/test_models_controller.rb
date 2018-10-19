class TestModelsController < ApplicationController
  before_action :set_test_model, only: [:show, :update, :destroy]


  # GET /test_models/1
  def show
    render json: @test_model
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_model
      @test_model = TestModel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def test_model_params
      params.require(:test_model).permit(:attribute_1, :attribute_2, :attribute_3, :attribute_4)
    end
end
