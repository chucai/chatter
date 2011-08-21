$(function(){
  var client = new Faye.Client('http://192.168.1.21:9292/faye');
  client.subscribe("/messages/new",function(data){
    eval(data);
  });
});

