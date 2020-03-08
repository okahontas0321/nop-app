// $(".buttom").click('submit', function(e){
//   e.preventDefault();
//   // そのほかのform情報を以下の記述でformDataに追加
//   var formData = new FormData();

//       // formData = $("product[name]").val();
//   // console.log(this)
//   // ドラッグアンドドロップで、取得したファイルをformDataに入れる。
//   files_array.forEach(function(file){
//     // var files = this.files;
// 	// $.each(files, function(i, file){
//    formData.append("product[production_year]" , $('select#year[name="product[production_year]"]').val());
//    formData.append("product[production_month]" , $('select#month[name="product[production_month]"]').val());
//    formData.append("product[production_day]" , $('select#day[name="product[production_day]"]').val());
//   //  formData.append("product[size]" , $('select#product_size.selects[name="product[size]"]').val());
//   //  formData.append("product[brand]" , $('input#product_brand[name="product[brand]"]').val());
//   //  formData.append("product[state]" , $('select#product_state.select-box[name="product[state]"]').val());
//   //  formData.append("product[shipping_fee]" , $('select#product_shipping_fee[name="product[shipping_fee]"]').val());
//   //  formData.append("product[shipping_region]" , $('select#product_shipping_region[name="product[shipping_region]"]').val());
//   //  formData.append("product[shipping_date]" , $('select#product_shipping_date[name="product[shipping_date]"]').val());
//   //  formData.append("product[price]" , $('input#product_price[name="product[price]"]').val());
   
//   console.log(formData.get("product[production_year]"));
//   console.log(formData.get("product[production_month"));
//   console.log(formData.get("product[production_day]"));
//   // console.log(formData.get("product[size]"));
//   // console.log(formData.get("product[brand]"));
//   // console.log(formData.get("product[state]"));
//   // console.log(formData.get("product[shipping_fee]"));
//   // console.log(formData.get("product[shipping_region]"));
//   // console.log(formData.get("product[shipping_date]"));
//   // console.log(formData.get("product[price]"));
  

//   });
//   $.ajax({
//     url:         '/create',
//     type:        "POST",
//     data:        formData,
//     contentType: false,
//     processData: false,
//     dataType:   'json'
//   })
//   .done(function(data){
    
//     alert('出品に成功しました！');
//   })
//   .fail(function(XMLHttpRequest, textStatus, errorThrown){
//     alert('出品に失敗しました！');
//   });
// });