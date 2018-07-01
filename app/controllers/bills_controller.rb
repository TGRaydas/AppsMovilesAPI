class BillsController < ApplicationController
  def create_bill
    desk = Desk.find(params[:desk][:id])
    the_bill = Bill.find_by(payed: false, desk_id: desk)
    if the_bill != nil
      render :json => false
      return 0
    end
    object = params[:products]
    bill = Bill.create(user_id: 1 , desk_id: params[:desk][:id], payed: false)
    object.each do |product|
      DishBill.create(bill_id: bill.id, product_id: product[:id])
    end
    render :json => bill
  end

  def update_bill
    desk = Desk.find(params[:desk][:id])
    the_bill = Bill.find_by(payed: false, desk_id: desk)
    if the_bill == nil
      render :json => false
      return 0
    end
    the_bill.dish_bills.each do |d|
      d.destroy
    end
    object = params[:products]
    object.each do |product|
      DishBill.create(bill_id: the_bill.id, product_id: product[:id])
    end
    render :json => the_bill
  end

  def kill_bill
    desk = Desk.find(params[:id])
    bill = Bill.find_by(desk_id: desk.id, payed: false)
    bill.update(payed: true)
    render :json => {response: true}.to_json
  end

  def get_bill
    desk = Desk.find(params[:id])
    bill = Bill.find_by(desk_id: desk.id, payed: false)
    products = bill.products
    products.each do |p|
      p["img_url"] << p.image.url(:medium)
    end
    render :json => products
  end
end


## create_bill url example /create_bill?desk=3;products=[{"id":1,"local_id":1,"name":"DESAYUNO PROTEICO","price":6500,"product_type":"Desayunos","detail":"Té o café con leche o cortado, huevos revueltos, palta, pan integral, jugo a elección","created_at":"2018-05-09T18:21:09.484Z","updated_at":"2018-05-09T18:21:09.484Z"},{"id":2,"local_id":1,"name":"DESAYUNO SANCHO","price":5500,"product_type":"Desayunos","detail":"Té o café con leche o cortado, tostadas con matequilla, paila de huevos con jamón, jugo a elección","created_at":"2018-05-09T18:21:09.557Z","updated_at":"2018-05-09T18:21:09.557Z"},{"id":3,"local_id":1,"name":"RUSO NEGRO","price":3750,"product_type":"Bebestibles","detail":"Vodka-licor de café","created_at":"2018-05-09T18:21:09.634Z","updated_at":"2018-05-09T18:21:09.634Z"},{"id":4,"local_id":1,"name":"CHILENAZO","price":8500,"product_type":"Sandwich","detail":"Churrasco, queso, palta, tomate, mayonesa en sopaipillas","created_at":"2018-05-09T18:21:09.714Z","updated_at":"2018-05-09T18:21:09.714Z"},{"id":5,"local_id":1,"name":"VODKA NARANJA","price":3200,"product_type":"Bebestible","detail":"","created_at":"2018-05-09T18:21:09.800Z","updated_at":"2018-05-09T18:21:09.800Z"}]