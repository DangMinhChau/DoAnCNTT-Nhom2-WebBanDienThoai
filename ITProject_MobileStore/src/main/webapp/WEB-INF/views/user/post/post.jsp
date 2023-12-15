<!DOCTYPE html>
<html>
<head>
<style>
body {
  font-family: Arial, sans-serif;
}

/* Post container */
.post {
  max-width: 700px;
  margin: 0 auto;
  border: 1px solid #ddd;
  padding: 20px;
}

/* Post header */ 
.post-header {
  display: flex;
  align-items: center;
}

.post-title {
  margin-right: 20px;  
}

.post-title h1 {
  margin: 0;
}

.post-author {
  color: #999;
}

/* Post content */
.post-content {
  line-height: 1.6;
  margin-top: 20px;
}

/* Post image */
.post-image {
  width: 100%;
  height: 300px;
  object-fit: cover;
  margin-top: 20px;
}

/* Post footer */
.post-footer {
  display: flex;
  align-items: center;
  margin-top: 20px;
  color: #999;
}

.post-footer a {
  color: #999;
  margin-left: 20px;
}
</style>
</head>

<body>

<div class="post">

  <div class="post-header">
    <div class="post-title">
      <h1>Comment</h1> 
    </div>
    <div class="post-author">
      by Nhom2
    </div>
  </div>

  <div class="post-content">
    <p>Content here...</p>
  </div>

  <img class="post-image" src="image.jpg">

  <div class="post-footer">
    <span>Published date</span>
    <a href="#">Read more</a>
  </div>

</div>

</body>
</html>
