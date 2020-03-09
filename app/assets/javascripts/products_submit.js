// $(function() {
//   $('#submitBtn').on('click', function(evt) {
//     // FormData オブジェクトを作成
//     var formData = new FormData();
//     var $text = $('#formText');
//     var $textarea = $('#formTextarea');
//     var $file = $('#formFile');
    
//     // appendを使いnameとデータをセット
//     formData.append( 'form-text', $text.val() );
    
//     // attr('name')を使えばHTMLで指定されているnameのまま送れる
//     formData.append( $textarea.attr('name'), $textarea.val() );

//     // fileは .prop() で files を取ってきてセットする
//     formData.append( $file.attr('name'), $file.prop("files")[0] );
    
//     // Ajaxで送信
//     $.ajax({
//       url:         '/create',
//       type:        "POST",
//       data:        formData,
//       contentType: false,
//       processData: false,
//       dataType:   'json'
//     })
//     .done(function(data){
      
//       alert('出品に成功しました！');
//     })
//     .fail(function(XMLHttpRequest, textStatus, errorThrown){
//       alert('出品に失敗しました！');
//     });
// });
// });