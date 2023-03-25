<!DOCTYPE html>
<html lang="es-ES">
<head> 
    <title>Felicidades Princesa</title> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/styles.css">
    <link href="../js/video-js.min.css" rel="stylesheet">
    <script src="../js/video.min.js"></script>

</head>
<style>
@media only screen and (max-width: 1270px) and (max-height: 650px){
  video#example_video_1 {
      width: 100%;
		height: auto;
  }
}
</style>
<body>
  <video id="example_video_1" class="video-js vjs-default-skin" autoplay controls preload="auto" height="650px" data-setup="{'fluid': true;'fill' :true}" style="text-align: center;top:0;left:0;right:0;bottom:0;margin:auto;position:absolute">
    <source src="<%=request.getParameter("video") %>" type="video/mp4">
  </video>
</body>

</html>
