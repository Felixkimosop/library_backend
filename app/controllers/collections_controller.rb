class CollectionsController < ApplicationController
  before_action :set_collection, only: %i[ show edit update destroy ]

  # GET /collections or /collections.json
  def index
    @collections = Collection.all
    render json: @collections
  end

  # GET /collections/1 or /collections/1.json
  def show
    collection = set_collection
    render json: collection
  end

   # DELETE /admins/1 or /admins/1.json
   def destroy
    @collection.destroy

    respond_to do |format|
      format.html { redirect_to collections_url, notice: "collection was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collection
      @collection = Collection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def collection_params
      params.require(:collection).permit(:user_id, :book_id)
    end
end
