class StaffsController < ApplicationController
  #before_actionで各メソッドを呼び出す前にメソッドを呼び出す
 #onlyでどのメソッドで呼び出すか制限をかける
before_action :set_staff, only: [:show, :update, :destroy, :edit]


#index->データの一覧の表示
 def index
   #Staffのデータの全件取得
   @staffs = Staff.all
 end


 def new
   @staff = Staff.new
 end

 def show
  #before_actionでデータの取得は完了している
 end

 #create->新規データの登録
 def create
    #formのデータを受け取る
   @staff = Staff.new(staff_params)
   debugger
   if @staff.save
     #saveが完了したら、一覧ページへリダイレクト
     flash[:success] = '新規作成に成功しました。'
     redirect_to staffs_url
   else
   #saveを失敗すると新規作成ページへ
     render :new
   end
 end

 #edit->編集ページの表示
 def edit
 #before_actionでデータの取得は完了している
 end

 def update
    #編集データの取得
   if @staff.update!(staff_params)
     #updateが完了したら一覧ページへリダイレクト
     flash[:success] = "従業員情報を更新しました。"
     redirect_to staffs_url
   else
     #updateを失敗すると編集ページへ
     render :edit     
   end
 end

 #destroy->データの削除
 def destroy
   #データの削除
   @staff.destroy
   flash[:success] = "#{@staff.name}のデータを削除しました。"
   #一覧ページへリダイレクト
   redirect_to staffs_url
 end



  private
   #strong parameters リクエストパラメターの検証（これがないとうまくいかないので注意）

  def staff_params
    params.require(:staff).permit(:nam, :email, :cellphone)
  end

  #共通処理なので、before_actionで呼び出している
  def set_staff
  #特定データの取得
    @staff = Staff.find(params[:id])
  end
end

