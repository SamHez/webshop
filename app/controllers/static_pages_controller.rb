class StaticPagesController < ApplicationController
  def show
    if valid_page?
      render template: "static_pages/#{params[:page]}"
    else
      render file: "public/404.html", status: :not_found
    end
  end
  def download
      send_file(
          "#{Rails.root}/public/write_up_v1.pdf",
          filename: "TheRailsShopCurriculum.pdf",
          type: "application/pdf"
      )
  end

  private
  def valid_page?
    File.exist?(Pathname.new(Rails.root + "app/views/static_pages/#{params[:page]}.html.erb"))
  end

end
