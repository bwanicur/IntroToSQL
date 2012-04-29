<?php 
// NOTE:  This PHP file is not a secure, scalable, or efficient way to build a web page.  The sole purpose of this PHP page is to demonstrate how the SQL queries
//        and schema patterns learned in our class can be used in a web application.  Doing this in one PHP file is a very transparent way to illustrate how we can use
//        what we have learned.  DO NOT use this file as an example of web development.


// helper function to insert post row
function create_post($user_id, $title, $body){
  // TODO:
  $result = mysql_query("");
  return $result;
}

// helper function to insert comment row
function create_comment($post_id, $body){
  // TODO: 
  $result = mysql_query("");
  return $result;
}

// helper function to insert posts_labels row
function create_post_label($post_id, $label_id){
  // TODO:
  $result = mysql_query("");
  return $result;
}


// connect to DB
$db_conn = mysql_connect(':/Applications/MAMP/tmp/mysql/mysql.sock', 'root', 'root'); 
mysql_select_db('blog_app', $db_conn);

// var_dump('POST: action: ' . $_POST['action'] . 'body: ' . $_POST['body'] . ' ' . 'title: ' . $_POST['title'] . ' ' . 'user_id: ' . $_POST['user_id']);

// all users
// TODO:
$all_users_res = mysql_query("");

// process action
if($_POST['action'] && $_POST['action'] == 'add_post'){
    create_post($_POST['user_id'], $_POST['title'], $_POST['body']);
}
else if($_POST['action'] && $_POST['action'] == 'add_comment'){
  create_comment($_POST['post_id'], $_POST['body']);
}
else if($_POST['action'] && $_POST['action'] == 'add_label'){
  create_post_label($_POST['post_id'], $_POST['label_id']);
}

// fetch user data
$user_id = $_REQUEST['user_id'] ;
// TODO:
$user_res = mysql_query(""); 
$user_data = mysql_fetch_assoc($user_res);

// fetch user posts
// TODO:
$posts_res = mysql_query("");

$num_posts_res = mysql_query("");
$num_posts = mysql_fetch_array($num_posts_res);
$num_posts = $num_posts[0];


// TODO:              
$comments_query = <<<END
  
END;

?>


<!DOCTYPE html>
<html>
<head>
  <link type="text/css" rel="stylesheet" href="bootstrap.min.css" />
  <style>
    body{
      background-color: #E6E6E6;
    }
    div.container div{
      margin: 2px;
      border-radius: 5px;
    }
    .inner {
      margin: 0px;
      padding: 0px;
    }
    .post {
      background-color: #E6E6E6;
      padding: 5px 5px 2px 10px;
    }
    .label {
      background-color: #EFEFFB;
      color: black;
    }
    .inner-content{
      background-color: #FBF8EF;
      padding: 5px;
      margin-top: 10px;
    }
    #user-list{
      padding: 50px 0px 50px 10px;
      background-color: #E0F8E0;
    }
  </style>
</head>
<body>
  <div class="container hero-unit">
    <?php if($user_id){ ?>
      <div id="user-posts" class="row span8">
        <div id="welcome">
            <h2>Welcome <?php echo $user_data['first_name'] . ' ' . $user_data['last_name']; ?></h2>
            <p>Total Posts: <?php echo $num_posts; ?></p>
        </div>
        <div id="posts">
            <?php while($post = mysql_fetch_assoc($posts_res)){ ?>
              <div class="post inner">
                <h4><?php echo $post['title']; ?></h4>
                <div class="inner-content"><?php echo $post['body']; ?></div>
                <?php 
                   // TODO:
                   $labels_query = "";
                    $labels_res = mysql_query($labels_query); 
                ?>
                <?php if(mysql_num_rows($labels_res) > 0){ ?>
                  <div class="labels inner">
                    <strong>Labels:</strong>
                    <?php while($label = mysql_fetch_assoc($labels_res)){ ?>
                      <?php echo '&nbsp;<span class="label">' . $label['name'] . '</span>&nbsp;'; ?>
                    <?php } ?>
                  </div>
                <?php } ?>
                <div id="label_form_div">
                  <strong>Add Label</strong>
                  <form action="blog_app.php?user_id=<?php echo $user_id; ?>" method="post" class="inner">
                    <input type="hidden" name="action" value="add_label" />
                    <input type="hidden" name="post_id" value="<?php echo $post['id']; ?>" />
                    <select name="label_id">
                      <option value="1">Sigil Related</option>
                      <option value="2">Snobbish</option>
                      <option value="3">Funny</option>
                      <option value="4">Whining</option>
                    </select>
                    <input type="submit" value="Add Label" />
                  </form>
                </div>
                <?php 
                      // TODO:
                      $comments_query = "";
                      $comments_res = mysql_query($comments_query); 
                ?>
                <?php if(mysql_num_rows($comments_res) > 0){ ?>
                  <div class="comments">
                    <h4>Comments:</h4>
                    <?php while($comment = mysql_fetch_assoc($comments_res)){ ?>
                      <div class="inner-content"><?php echo $comment['body']; ?></div>
                    <?php } ?>
                  </div>
                <?php } ?>
                <div id="comment_form_div">
                  <strong>Add Comment</strong>
                  <form action="blog_app.php?user_id=<?php echo $user_id; ?>" method="post" class="inner">
                    <input type="hidden" name="action" value="add_comment" />
                    <input type="hidden" name="post_id" value="<?php echo $post['id']; ?>" />
                    <textarea name="body"></textarea>
                    <input type="submit" value="Add Comment" />
                  </form>
                </div>
              </div>
              <br />
              <br/ >
            <?php } ?>
        </div>
   
        <div id="add_post_form">
          <h3>Create New Post</h3>
          <form action="blog_app.php?user_id=<?php echo $user_id; ?>" method="post">
            <input type="hidden" name="action" value="add_post" />
            <input type="hidden" name="user_id" value="<?php echo $user_id; ?>" />
            <input type="text" name="title" placeholder="Title" /><br />
            <textarea name="body" placeholder="Post Goes Here" rows="10" cols="50"></textarea><br />
            <input type="submit" value="Create Post" />
          </form>
        </div>
      </div>
    <?php } ?>
    <div id="user-list" class="row span4">
      <h3>Users</h3>
      <ul>
      <?php while($user = mysql_fetch_assoc($all_users_res)){ ?>
        <li><a href="blog_app.php?user_id=<?php echo $user['id'] ?>"><?php echo $user['first_name'] . ' ' . $user['last_name']; ?></a></li>
      <? } ?>
      </ul>
    </div>
  </div>
</body>
</html>
