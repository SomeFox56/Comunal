<?php
include('database/database.php');
include("database/tour.php");
include("database/user.php");
include("database/comments.php");
if(!isset($_GET['id'])) header('Location: /index.php');
$tour = getTourById(($_GET['id']));

if(empty($tour)) header('Location: /index.php');
$tour_author = getUserById($tour['author_id']);
$tour_image = $tour['image_path'] == NULL ?'images/pic01.jpg': $tour['image_path'];

?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="css/tour.css">
</head>
<body>
<div class="main">
    <h2><?php echo $tour['title'];?></h2>

    <img src="images/uploads/<?php echo $tour['image_path'];?>">
    <p><?php echo $tour['content'];?></p>
    <div class="buy"><p><?php echo $tour['price'];?>₽.</p><a>В корзину</a></div>
</div>
<div class="feedback">
    <form action="actions/add_comment.php" method="post">
        <input type="text" placeholder="Написать отзыв" name="text">
        <input type="text" hidden name="tour_id" value="<?php echo $tour['id']?>">
        <input type="submit" >
    </form>
</div>
<?php  $all_comments =  getCommentsByTourId($tour['id']);?>
<?php for($i = 0; $i<count($all_comments);$i++):?>
<p><?php echo $all_comments[$i]['id'];?></p>
<?php endfor;?>
</body>
</html>
