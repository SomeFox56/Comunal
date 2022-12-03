<?php
session_start();

include('database/database.php');
global $database;
include('database/user.php');
?>
<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Главная</title>
    <link rel="stylesheet" href="css/index.css">

</head>
<body>
<div class="header">
    <div class="logo">
        <img src="images/index/logo.png">
    </div>
    <div class="nav_block">
        <?php
        if(is_null($_SESSION['USER_ID'])) {
        echo'<a href="login.php">Вход</a>
        <a href="registration.php">Регистрация</a>';}
        else{
            $user_name = "<p>". (getUserById($_SESSION['USER_ID']))["first_name"].' '.(getUserById($_SESSION['USER_ID']))["last_name"]."</p>";
            echo $user_name;

            if((getUserById($_SESSION['USER_ID']))["role"] =="seller"  or (getUserById($_SESSION['USER_ID']))["role"] =="admin" ){
                echo'<a href="add_tour.php">Добавить тур</a>';
            }
            echo'<a href="exit.php">Выход</a>';
        }

        ?>

    </div>
</div>
<div class="best_tours">
    <div class="best_tours_title">
        <p>Лучшие туры</p>
    </div>
    <div class="tour_images">
    <div class="best_tours_images">
        <a href="" class="img_and_title">
            <img src="images/tours/img.png">
            <p>100000р</p>
            <div class="name_and_stars">
                <h1>Египет</h1>
                <div class="stars">
                    <img src="images/index/star.png">
                    <img src="images/index/star.png">
                    <img src="images/index/star.png">
                </div>
            </div>

        </a>
        <a href="" class="img_and_title">
            <img src="images/tours/img_1.png">
            <p>120000р</p>
            <div class="name_and_stars">
                <h1>Реюньон</h1>
                <div class="stars">
                    <img src="images/index/star.png">
                    <img src="images/index/star.png">
                    <img src="images/index/star.png">
                    <img src="images/index/star.png">
                </div>
            </div>

        </a>
        <a href="" class="img_and_title">
            <img src="images/tours/img.png">
            <p>100000р</p>
            <div class="name_and_stars">
                <h1>Египет</h1>
                <div class="stars">
                    <img src="images/index/star.png">
                    <img src="images/index/star.png">
                    <img src="images/index/star.png">
                </div>
            </div>

        </a>
        <a href="" class="img_and_title">
            <img src="images/tours/img.png">
            <p>100000р</p>
            <div class="name_and_stars">
                <h1>Египет</h1>
                <div class="stars">
                    <img src="images/index/star.png">
                    <img src="images/index/star.png">
                    <img src="images/index/star.png">
                </div>
            </div>

        </a>
        <a href="" class="img_and_title">
            <img src="images/tours/img.png">
            <p>100000р</p>
            <div class="name_and_stars">
                <h1>Египет</h1>
                <div class="stars">
                    <img src="images/index/star.png">
                    <img src="images/index/star.png">
                    <img src="images/index/star.png">
                </div>
            </div>

        </a>
        <a href="" class="img_and_title">
            <img src="images/tours/img.png">
            <p>100000р</p>
            <div class="name_and_stars">
                <h1>Египет</h1>
                <div class="stars">
                    <img src="images/index/star.png">
                    <img src="images/index/star.png">
                    <img src="images/index/star.png">
                </div>
            </div>

        </a>




    </div>
    </div>
</div>
</div>

<div class="sales_tours">
    <div class="best_sales_title">
        <p>Скидки</p>
    </div>
    <div class="tour_images">
        <div class="best_sales_images">
            <a href="" class="img_and_title">
                <img src="images/tours/img.png">
                <p>100000р</p>
                <div class="name_and_stars">

                    <h1>Египет</h1>
                    <div class="stars">
                        <img src="images/index/star.png">
                        <img src="images/index/star.png">
                        <img src="images/index/star.png">
                    </div>
                </div>

            </a>
            <a href="" class="img_and_title">
                <img src="images/tours/img.png">
                <p>100000р</p>
                <div class="name_and_stars">
                    <h1>Египет</h1>
                    <div class="stars">
                        <img src="images/index/star.png">
                        <img src="images/index/star.png">
                        <img src="images/index/star.png">
                    </div>
                </div>

            </a>
            <a href="" class="img_and_title">
                <img src="images/tours/img.png">
                <p>100000р</p>
                <div class="name_and_stars">
                    <h1>Египет</h1>
                    <div class="stars">
                        <img src="images/index/star.png">
                        <img src="images/index/star.png">
                        <img src="images/index/star.png">
                    </div>
                </div>

            </a>

        </div>
    </div>
</div>
<div class="all_tours">
    <div class="all_tours_title">
        <p>Все туры</p>
    </div>
    <div class="tour_images">

        <div class="all_tours_images">
            <?php $top6posts = $database->query("SELECT * FROM `tours` LIMIT 6")->fetchAll(PDO::FETCH_ASSOC); if(count($top6posts)==0){echo '<h1>Пока туров нет!</h1>';};
            ?>

            <?php for($i = 0; $i<count($top6posts);$i++): $tour_url = 'tour.php?id='.$top6posts[$i]['id'];?>
            <a href="<?=$tour_url?>" class="img_and_title">
                <img src="images/uploads/<?php echo $top6posts[$i]['image_path'];?>">
                <p><?php echo $top6posts[$i]['price'];?>₽.</p>
                <div class="name_and_stars">
                    <h1><?php echo $top6posts[$i]['title'];?> </h1>
                    <div class="stars">
                        <img src="images/index/star.png">
                        <img src="images/index/star.png">
                        <img src="images/index/star.png">
                    </div>
                </div>

            </a>
            <?php endfor;?>

        </div>
    </div>

</div>
<div class="all_tours_button">
    <a href="all_tours.php">Все туры</a>
</div>
</body>
</html>
<?php
include("snippets/footer.php")
?>