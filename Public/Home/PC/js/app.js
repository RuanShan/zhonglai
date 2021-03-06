$(function () {
            $.ajaxSetup({
                layerIndex:-1,
                beforeSend: function () {
                    this.layerIndex = layer.load(0, { shade: [0.5, '#393D49'] });
                },
                complete: function () {
                    layer.close(this.layerIndex);
                },
                error: function () {
                    layer.alert('部分数据加载失败，可能会导致页面显示异常，请刷新后重试', {
                        skin: 'layui-layer-molv'
                       , closeBtn: 0
                       , shift: 4 //动画类型
                    });
                }
            });
});

$(document).ready( function(){
  $(".widget-job-2").on('click','._jt',function() {
    if($(this).hasClass("_jt_act")){
      $(this).next("._jc").slideUp('128').end().removeClass('_jt_act');
    }else{
    $(this).addClass("_jt_act").siblings("._jt_act").removeClass("_jt_act").end().
    next("._jc").slideDown('128').siblings("._jc:visible").slideUp('128');
    }
  })

})
function _openJobDetail(){

}

function _addFavoriteJob() {
     var url = window.location;
     var title = document.title;
     var ua = navigator.userAgent.toLowerCase();
     if (ua.indexOf("360se") > -1) {
         alert("由于360浏览器功能限制，请按 Ctrl+D 手动收藏！");
     }
     else if (ua.indexOf("msie 8") > -1) {
         window.external.AddToFavoritesBar(url, title); //IE8
     }
     else if (document.all) {//IE类浏览器
       try{
        window.external.addFavorite(url, title);
       }catch(e){
        alert('您的浏览器不支持,请按 Ctrl+D 手动收藏!');
       }
     }
     else if (window.sidebar) {//firfox等浏览器；
         window.sidebar.addPanel(title, url, "");
     }
     else {
         alert('您的浏览器不支持,请按 Ctrl+D 手动收藏!');
     }
 }
