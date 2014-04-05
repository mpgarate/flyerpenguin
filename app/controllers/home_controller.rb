class HomeController < ApplicationController
  def index

  end

  def get_pdf

    # hard coding this for now!
    @graph = Koala::Facebook::API.new('CAACEdEose0cBAKeO3UhLoqNwQHkcp6XZAfwpap2xoBb7sLawAdbe5IjJ2iw6MMM8ZBTnY22YmrnRFcE1NMp12uT7tKBWuZAhMDL4KFE1tc31KAtpIsSP3gHZC882oc9ZA5iQhyLvrtaUVA7XUZCBT3us33EBvhJAEoVtIcnQycrLp5mCAcdOJnXjVASB47b6UZD')
    @event = @graph.get_object('364610737014759')
    puts "EVENT_INFO: #{@event.to_s}"

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "generated_file", :template => 'home/get_pdf.html.erb'
      end
    end
  end
end
