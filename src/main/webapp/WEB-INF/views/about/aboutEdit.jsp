<!-- ======= About Section ======= -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>


<body>
<!-- ======= Header ======= -->
<%@include file="../dynamic/navigationMain.jspf" %>
<!-- End Header -->


<form method="post" action='<c:url value="/aboutEdit"/>'>
<section id="about" class="about-mf sect-pt4 route">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="box-shadow-full mt-5">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-sm-6 col-md-5">
                                    <div class="about-img">
                                        <img src='<c:url value="/resources/img/kt.jpg"/>' class="img-fluid rounded b-shadow-a" alt="">
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-7">
                                    <div class="about-info">
                                        <p><span class="title-s">Name: </span><input class="form-control" type="text" name="name" value="${about.name}"></p>
                                        <p><span class="title-s">Profile: </span><input class="form-control" type="text" name="profile" value="${about.profile}"></p>
                                        <p><span class="title-s">Email: </span><input class="form-control" type="text" name="email" value="${about.email}"></p>
                                        <p><span class="title-s">Phone: </span><input class="form-control" type="text" name="phoneNr" value="${about.phoneNr}"></p>
                                    </div>
                                </div>
                            </div>


                            <div class="skill-mf">
                                <p class="title-s">Nazwa Skilla</p>
                                <span><input class="form-control" type="text" name="skill" value="${about.skill}"></span>
                                <p class="title-s">Procent znajomości</p>
                                <span class="pull-right"><input class="form-control" type="text" name="skill" value="${about.skillPercentage}"></span>
                                <div class="progress">
                                    <div class="progress-bar" role="progressbar" style="width: ${about.skillPercentage}%;" aria-valuenow="${about.skillPercentage}" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <a href='<c:url value="/"/>' class="btn btn-success btn-icon-split mb-5">
                                    <span class="icon text-white-50">
                                      <i class="fas fa-info-circle"></i>
                                    </span>
                                    <span class="text">Nowy skill</span>
                                </a>

                                <a href='<c:url value="/"/>' class="btn btn-danger btn-icon-split mb-5">
                                    <span class="icon text-white-50">
                                      <i class="fas fa-info-circle"></i>
                                    </span>
                                    <span class="text">Usuń skill</span>
                                </a>


                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="about-me pt-4 pt-md-0">
                                <div class="title-box-2">
                                    <h5 class="title-left">
                                        About me
                                    </h5>
                                </div>
                                <p class="lead">


                                    <div class="col-10">
                                        <textarea class="form-control" rows="7" id="start" name="description"  value="${about.aboutMe}">${about.aboutMe}</textarea>
                                    </div>

                                </p>

                            </div>
                        </div>
                    </div>
                    <input type="submit" value="Wyślij" class="btn btn-info btn-icon-split">


                </div>




            </div>



        </div>
    </div>


</section>
</form>
<!-- End About Section -->

<!-- ======= Footer ======= -->
<%@include file="../dynamic/board.jspf" %>
<!-- End  Footer -->

</body>
</html>