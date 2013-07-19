class SchoolsController < ApplicationController
  # GET /schools
  # GET /schools.json
  def index
    @schools = School.all
    @json = @schools.to_gmaps4rails do |school, marker|
    marker.infowindow render_to_string(:partial => "infowindow", :locals => { :school => school})
    marker.title "#{school.name}"
    marker.json({ :content => school.content, :division => school.division, :wins => school.wins,
                  :losses => school.losses, :pts_for => school.pts_for,
                  :globe_rank => school.globe_rank, :herald_rank => school.herald_rank,
                  :pts_against => school.pts_against, :big_game => school.big_game, 
                  :highly_recruited => school.highly_recruited, :league => school.league                  
                })
    marker.picture({:picture => "http://www.kilmain.com/gmaps_icons/usfootball_default2.png",
                    :width => 32,
                    :height => 32
                    })
    end
  end

  def search
    @schools = School.search(params[:search])
  end

  # GET /schools/1
  # GET /schools/1.json
  def show
    @school = School.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @school }
    end
  end
end
