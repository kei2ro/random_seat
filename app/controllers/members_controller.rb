class MembersController < ApplicationController
  def create
    @team = Team.find(params[:team_id])
    @member = @team.members.create(member_params)
    redirect_to team_path(@team.id)
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to team_path(params[:team_id])
  end

  def randomSeat
    @team = Team.find(params[:team_id])
    @members = @team.members
    @array = Array.new
    @members.each do |member|
      @array.push(member.name)
    end
    @array.shuffle!
  end

  private
    def member_params
      params[:member].permit(:name)
    end
end
