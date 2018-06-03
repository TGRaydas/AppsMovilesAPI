class DesksController < ApplicationController
  def index
    @desks = Desk.all
    return_desks = []
    @desks.each do |desk|
      add_desk = true
      desk.bills.each do |bill|
        if bill.payed == false
          add_desk = false
        end
      end
      if add_desk == true
        return_desks.push(desk)
      end
    end
    render :json => return_desks
  end

  def my_desks
    user = User.find_by(token: params[:token])
    bills = Bill.where(payed: false, user_id: user.id)
    desks = []
    bills.each do |b|
      desks.push(b.desk_id)
    end
    desks = Desk.where(id: desks)
    render :json => desks
  end

end
