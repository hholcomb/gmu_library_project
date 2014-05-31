class ReservationsController < ApplicationController

#before_action :set_user, only: [:index, :overdue]
before_action :set_user, only: [:index]

before_action :set_book, only: [:create]

  def index
    @reservations = @user.reservations.order('created_at desc')
  end


  # GET /reservations/overdue
  def overdue
   @overdueset = Reservation.where( "due_on < ?", Time.zone.now  )
  end

  def show
   @overdueset = Reservation.where( "due_on < ?", Time.zone.now ).order(:user_id)
  end


  def destroy
      resindex = params[ :thereservationid ] 
      resindex.inspect
      reservationobj  = Reservation.find( params[ :thereservationid] )
      reservationobj.inspect
      Reservation.find( params[ :thereservationid]  ).delete
      redirect_to books_url
  end


  def create
    user_index = params[:user_index]
    book_id = params[:book_id]
#    today = Date.today
    today = Time.zone.now
    tomorrow = today +1.days

    @reservation = @book.reservations.new( book_id: book_id, 
                                           user_id: user_index,
                                           reserved_on: today,
                                           due_on: tomorrow )

    if @reservation.save
       redirect_to reservations_path(@user), notice: 'Reservation generated!'
    else
       redirect_to books_index_path(@user), notice: 'Reservation failed!'
    end
  end

private

  def set_user
    @user = User.find(session[ :user_index ] )
  end

  def set_book
        @book = Book.find(params[:book_id])
  end

end
