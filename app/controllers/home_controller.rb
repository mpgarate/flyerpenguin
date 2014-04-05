class HomeController < ApplicationController
  def index

  end

  def get_pdf
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "generated_file", :template => 'home/get_pdf.html.erb'
      end
    end
  end
end
