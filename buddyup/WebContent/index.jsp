<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  <!-- Section: home video -->
<%@ include file="/common/header.jsp" %>
  
  
  <section id="intro" class="home-video text-light">
    <div class="home-video-wrapper">

      <div class="homevideo-container">
        <div id="P1" class="bg-player" style="display:block; margin: auto; background: rgba(0,0,0,0.5)" data-property="{videoURL:'https://www.youtube.com/watch?v=AG0_kydJmTA',containment:'.homevideo-container', quality: 'hd720', showControls: false, autoPlay:true, mute:true, startAt:0, opacity:1}"></div>
      </div>
      <div class="overlay">
        <div class="text-center video-caption">
          <div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.8s">
            <h1 class="big-heading font-light"><span id="js-rotating">   , 누구와, 여행을,일정시작,여행시작
			</span></h1>
          </div>
          <div class="wow bounceInUp" data-wow-offset="0" data-wow-delay="1s">
            <div class="margintop-30">

						<div class="container">
						  <div class="row">
						  <!--위치 정하기 center-->
							<div class="col-md-20">
							  <form class="form-inline m-0">
								<input class="form-control mr-2" type="text" placeholder="Search">
								<button class="btn btn-primary" type="submit">Search</button>
							  </form>
							</div>

						</div>
					  </div>			  
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- /Section: intro -->



  <!-- Section: works -->
  <section id="works" class="home-section color-dark text-center bg-white">
    <div class="container marginbot-30">
      <div class="row">
        <div class="col-lg-8 col-lg-offset-2">
          <div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
            <div class="section-heading text-center">
              <h2 class="h-bold">Portfolio</h2>
              <div class="divider-header"></div>
              <p>Lorem ipsum dolor sit amet, agam perfecto sensibus usu at duo ut iriure.</p>
            </div>
          </div>
        </div>
      </div>

    </div>

    <div class="container">
      <div class="row">
        <div class="col-sm-12 col-md-12 col-lg-12">
          <div class="wow bounceInUp" data-wow-delay="0.4s">
            <div id="owl-works" class="owl-carousel">
              <div class="item"><a href="<%=root %>/res/img/works/1.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="<%=root %>/res/img/works/1@2x.jpg"><img src="<%=root %>/res/img/works/1.jpg" class="img-responsive" alt="img"></a></div>
              <div class="item"><a href="<%=root %>/res/img/works/2.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="<%=root %>/res/img/works/2@2x.jpg"><img src="<%=root %>/res/img/works/2.jpg" class="img-responsive " alt="img"></a></div>
              <div class="item"><a href="<%=root %>/res/img/works/3.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="<%=root %>/res/img/works/3@2x.jpg"><img src="<%=root %>/res/img/works/3.jpg" class="img-responsive " alt="img"></a></div>
              <div class="item"><a href="<%=root %>/res/img/works/4.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="<%=root %>/res/img/works/4@2x.jpg"><img src="<%=root %>/res/img/works/4.jpg" class="img-responsive " alt="img"></a></div>
              <div class="item"><a href="<%=root %>/res/img/works/5.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="<%=root %>/res/img/works/5@2x.jpg"><img src="<%=root %>/res/img/works/5.jpg" class="img-responsive " alt="img"></a></div>
              <div class="item"><a href="<%=root %>/res/img/works/6.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="<%=root %>/res/img/works/6@2x.jpg"><img src="<%=root %>/res/img/works/6.jpg" class="img-responsive " alt="img"></a></div>
              <div class="item"><a href="<%=root %>/res/img/works/7.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="<%=root %>/res/img/works/7@2x.jpg"><img src="<%=root %>/res/img/works/7.jpg" class="img-responsive " alt="img"></a></div>
              <div class="item"><a href="<%=root %>/res/img/works/8.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="<%=root %>/res/img/works/8@2x.jpg"><img src="<%=root %>/res/img/works/8.jpg" class="img-responsive " alt="img"></a></div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </section>
  <!-- /Section: works -->


  

  <!-- google map -->

  <a id="map-btn2" class="btn btn-skin btn-lg btn-noradius gmap-btn close-map-button btn-hide" href="#map" title="Close google map" data-toggle="tooltip" data-placement="top">
	795 Folsom Ave, Suite 600 San Francisco, CA 94107
	</a>

  <!-- google map -->
  <section id="map" class="close-map">
    <div id="google-map"></div>
  </section>
  <!-- /google map -->
  <%@ include file="/common/footer.jsp" %>
