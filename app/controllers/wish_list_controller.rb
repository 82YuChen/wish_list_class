class WishListController < ApplicationController
    def card
    end

    def new_wish
    end

    def create_card
        clean_params = params.require(:wsl).permit(:title, :description)
        wl = WishList.new(clean_params)

        if wl.save
            render html: "done"
        else
            render html: "fail"
        end

    end
end
