class WishListsController < ApplicationController

    # rescue_from ActiveRecord::RecordNotFound, with: :not_found
  before_action :authenticate_user!
  before_action :find_wish_list ,only: [:show, :destroy,:edit, :update]

  def index
    @wish_lists = current_user.wish_lists
  end

  def new
    @wish_list = WishList.new
  end

  def create
    # @wish_list = WishList.new(wish_list_params)

    @wish_list = current_user.wish_lists.new(wish_list_params)

    if @wish_list.save
    # flash[:notice] = "許願卡新增成功！"
        redirect_to root_path, notice: "許願卡新增成功"
    else
        render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @wish_list.update(wish_list_params)
        # flash[:notice] = "許願卡新增成功！"
        redirect_to root_path, notice: "更新許願卡成功！"
    else
        render :edit
    end
  end

  def destroy
    @wish_list.destroy
    redirect_to root_path, notice: "許願卡刪除！"
  end
# private
# def not_found
#     render file: "#{Rails.root}/public/404.html", 
#            status: 404,
#            layout: false, 
# end
  private
  def find_wish_list
    @wish_list = current_user.wish_lists.find(params[:id])
  end

  def wish_list_params
    params.require(:wish_list).permit(:title, :description)
  end

end
