<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<title>Contact Us</title>
	<head>
		<meta charset="ISO-8859-1">		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	</head>
	<jsp:include page="nav.jsp" />
<body>
<!-- Section: Contact v.3 -->
    <section class="contact-section my-5">

      <!-- Form with header -->
      <div class="card">

        <!-- Grid row -->
        <div class="row">

          <!-- Grid column -->
          <div class="col-lg-8">

            <div class="card-body form">

              <!-- Header -->
              <h3 class="mt-4"><i class="fas fa-envelope pr-2"></i>Write to us:</h3>

              <!-- Grid row -->
              <div class="row">

                <!-- Grid column -->
                <div class="col-md-6">
                  <div class="md-form mb-0">
                    <input type="text" id="form-contact-name" class="form-control">
                    <label for="form-contact-name" class="">Your name</label>
                  </div>
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-6">
                  <div class="md-form mb-0">
                    <input type="text" id="form-contact-email" class="form-control">
                    <label for="form-contact-email" class="">Your email</label>
                  </div>
                </div>
                <!-- Grid column -->

              </div>
              <!-- Grid row -->

              <!-- Grid row -->
              <div class="row">

                <!-- Grid column -->
                <div class="col-md-6">
                  <div class="md-form mb-0">
                    <input type="text" id="form-contact-phone" class="form-control">
                    <label for="form-contact-phone" class="">Your phone</label>
                  </div>
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-6">
                  <div class="md-form mb-0">
                    <input type="text" id="form-contact-company" class="form-control">
                    <label for="form-contact-company" class="">Your company</label>
                  </div>
                </div>
                <!-- Grid column -->

              </div>
              <!-- Grid row -->

              <!-- Grid row -->
              <div class="row">

                <!-- Grid column -->
                <div class="col-md-12">
                  <div class="md-form mb-0">
                    <textarea id="form-contact-message" class="form-control md-textarea" rows="3"></textarea>
                    <label for="form-contact-message">Your message</label>
                    <a class="btn-floating btn-lg blue">
                      <i class="far fa-paper-plane"></i>
                    </a>
                  </div>
                </div>
                <!-- Grid column -->

              </div>
              <!-- Grid row -->

            </div>

          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-lg-4">

            <div class="card-body contact text-center h-100 white-text">

              <h3 class="my-4 pb-2">Contact information</h3>
              <ul class="text-lg-left list-unstyled ml-4">
                <li>
                  <p class="Contact"><i class="fas fa-map-marker-alt pr-2"></i>Columbus, OH, USA, 43201</p>
                </li>
                <li>
                  <p class="Contact"><i class="fas fa-phone pr-2"></i>+ 01 234 567 89</p>
                </li>
                <li>
                  <p class="Contact"><i class="fas fa-envelope pr-2"></i>contact@example.com</p>
                </li>
              </ul>
              <hr class="hr-light my-4">

            </div>

          </div>
          <!-- Grid column -->

        </div>
        <!-- Grid row -->

      </div>
      <!-- Form with header -->

    </section>
    <!-- Section: Contact v.3 -->
</body>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.12.0/js/mdb.min.js"></script>
</html>