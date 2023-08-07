<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>
    <section class="vh-100 bg-image"
    style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
    <div class="mask d-flex align-items-center h-100 gradient-custom-3">
      <div class="container h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
          <div class="col-12 col-md-9 col-lg-7 col-xl-6">
            <div class="card" style="border-radius: 15px;">
              <div class="card-body p-5">
                <h2 class="text-uppercase text-center mb-5">Simple Registration Page</h2>
  
                <form action="LoginDemo" method="post">
  
                    <label class="form-label" >Your Name</label>
                    <input type="text" class="form-control form-control-lg" placeholder="enter your name" name="name" required>
  
                    <label class="form-label">Your Email</label>
                    <input type="email"  class="form-control form-control-lg"placeholder="name@example.com" name="email" required >
  
                    <label class="form-label" >Password</label>
                    <input type="password"  class="form-control form-control-lg"placeholder="*******" name="pass1" required >
                
  
                    <label class="form-label">Confirm your password</label><br>
                    <input type="password"  class="form-control form-control-lg" placeholder="*******" name="pass2" required><br>
         

  
                  <div class="b">
                    <button type="submit"
                      class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Submit</button>
                      
                         <button type="reset"
                      class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Reset</button>
                  </div>
 
  
                </form>
  
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
  </body>
</html>