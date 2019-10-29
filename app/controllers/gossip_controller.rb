class GossipController < ApplicationController
  def show
    @gossip = Gossip.find(params[:id])
    @day = @gossip.created_at.day
    @month = @gossip.created_at.month
    @year = @gossip.created_at.year
  end
end
