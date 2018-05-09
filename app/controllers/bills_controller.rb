class BillsController < ApplicationController
  def create_bill
    object = JSON.parse params[:products]
    bill = Bill.create(user_id: 1 , desk_id: params[:desk], payed: false)
    object.each do |product|
      DishBill.create(bill_id: bill.id, product_id: product[:id])
    end
    render :json => bill
  end

  def kill_bill
    bill = params[:id]
    the_bill = Bill.find(bill)
    the_bill.update(payed: true)
    render :json => true
  end
end
