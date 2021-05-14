class GossipController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossip_params)
    @gossip.update(user: current_user)
    respond_to do |format|
      if @gossip.save
        format.html { redirect_to '/gossip', notice: "Gossip was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    respond_to do |f|
      if @gossip.update(gossip_params)
        f.html { redirect_to '/gossip', notice: "Gossip was successfully updated." }
      else
        f.html { render :edit, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @gossip = Gossip.find(params[:id])
    if @gossip.user_id != current_user.id
      flash.now[:alert] = "Email or password is invalid"
    else
      @gossip.destroy
    end
    redirect_to '/gossip'
  end
  
  private
  def gossip_params
    params.require(:gossip).permit(:title, :content)
  end



end


