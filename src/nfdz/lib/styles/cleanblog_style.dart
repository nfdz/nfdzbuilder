import 'package:web_builder/foundation/web/web_css.dart';

class CleanblogCss {
  static WebCss build() {
    return WebCss(
      name: "clean-blog.css",
      stylesheet: """
/*!
 * It has modifications of nfdz.
 * Start Bootstrap - Clean Blog v3.3.7+1 (http://startbootstrap.com/template-overviews/clean-blog)
 * Copyright 2013-2016 Start Bootstrap
 * Licensed under MIT (https://github.com/BlackrockDigital/startbootstrap/blob/gh-pages/LICENSE)
 */
body {
  font-family: 'Roboto', serif;
  font-size: 20px;
  color: #333333;
}
p {
  line-height: 1.5;
  margin: 30px 0;
}
p a {
  text-decoration: underline;
}
h1,
h2,
h3,
h4,
h5,
h6 {
  font-family: 'Nunito', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  font-weight: 800;
}
a {
  color: #333333;
}
a:hover,
a:focus {
  color: #1E90FF; /* <- This is the accent color */
}
a img:hover,
a img:focus {
  cursor: zoom-in;
}
blockquote {
  color: #777777;
  font-style: italic;
}
hr.small {
  max-width: 100px;
  margin: 15px auto;
  border-width: 4px;
  border-color: white;
}
.navbar-custom {
  position: absolute;
  top: 0;
  left: 0;
  height: 52px;
  width: 100%;
  z-index: 3;
  font-family: 'Roboto', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  -webkit-transition: background-color 0.3s;
  -moz-transition: background-color 0.3s;
  transition: background-color 0.3s;
  /* Force Hardware Acceleration in WebKit */
  -webkit-transform: translate3d(0, 0, 0);
  -moz-transform: translate3d(0, 0, 0);
  -ms-transform: translate3d(0, 0, 0);
  -o-transform: translate3d(0, 0, 0);
  transform: translate3d(0, 0, 0);
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}
.navbar-custom.is-fixed {
  /* when the user scrolls down, we hide the header right above the viewport */
  position: fixed;
  top: -52px;
  background-color: rgba(255, 255, 255, 0.9);
  -webkit-transition: -webkit-transform 0.3s;
  -moz-transition: -moz-transform 0.3s;
  transition: transform 0.3s;
}
.navbar-custom.is-visible {
  /* if the user changes the scrolling direction, we show the header */
  -webkit-transform: translate3d(0, 100%, 0);
  -moz-transform: translate3d(0, 100%, 0);
  -ms-transform: translate3d(0, 100%, 0);
  -o-transform: translate3d(0, 100%, 0);
  transform: translate3d(0, 100%, 0);
}
.navbar-custom .navbar-brand {
  font-weight: bold;
  font-family: 'Nunito', sans-serif;
  color: black;
  font-size: 20px;
  outline: 0;
}
.navbar-custom .navbar-header .navbar-toggle {
  color: black;
  text-transform: uppercase;
  font-size: 12px;
}
.navbar-custom .navbar-header .navbar-toggle {
  color: black;
  text-transform: uppercase;
  font-size: 12px;
}
.navbar-custom .navbar-header .navbar-toggle:focus {
  background-color: rgba(0, 0, 0, 0);
}
.navbar-custom .navbar-header .navbar-toggle:hover,
.navbar-custom .navbar-header .navbar-toggle:active {
  background-color: rgba(0, 0, 0, 0.2);
}
.navbar-custom .nav li a {
  top: -9px;
  text-transform: uppercase;
  font-size: 12px;
  color: black;
  text-align: center;
  font-weight: 550;
  letter-spacing: 1px;
  font-weight: bold;
  outline: 0;
  background-color: rgba(255, 255, 255, 0.9);
}
.navbar-custom .nav li a:hover,
.navbar-custom .nav li a:focus {
  background-color: rgba(227, 227, 227, 0.9);
  color: #1E90FF;
}
@media only screen and (min-width: 768px) {
  .navbar-custom {
    height: 61px;
    background: transparent;
    border-bottom: 1px solid transparent;
  }
  .navbar-custom .navbar-brand {
    color: white;
    padding: 20px;
  }
  .navbar-custom .navbar-brand:hover,
  .navbar-custom .navbar-brand:focus {
    color: rgba(255, 255, 255, 0.8);
  }
  .navbar-custom .nav li a {
    color: white;
    padding: 20px;
    top: 0px;
    background-color: rgba(0, 0, 0, 0);
  }
  .navbar-custom .nav li a:hover,
  .navbar-custom .nav li a:focus {
    background-color: rgba(0, 0, 0, 0);
    color: black;
    color: rgba(255, 255, 255, 0.8);
  }
  .navbar-custom.is-fixed {
    top: -61px;
  }
  .navbar-custom.is-fixed .navbar-brand {
    color: #333333;
  }
  .navbar-custom.is-fixed .navbar-brand:hover,
  .navbar-custom.is-fixed .navbar-brand:focus {
    color: #1E90FF;
  }
  .navbar-custom.is-fixed .nav li a:hover,
  .navbar-custom.is-fixed .nav li a:focus {
    color: #1E90FF;
  }

  .navbar-custom.is-fixed .nav li a {
    color: #333333;
  }
}
.intro-header {
  background-color: #777777;
  background: no-repeat center center;
  background-attachment: scroll;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  background-size: cover;
  -o-background-size: cover;
  margin-bottom: 50px;
}
.intro-header .site-heading,
.intro-header .post-heading,
.intro-header .page-heading {
  padding: 100px 0 50px;
  color: white;
}
@media only screen and (min-width: 768px) {
  .intro-header .site-heading,
  .intro-header .post-heading,
  .intro-header .page-heading {
    padding: 150px 0;
  }
}
.intro-header .site-heading,
.intro-header .page-heading {
  text-align: center;
}
.intro-header .site-heading h1,
.intro-header .page-heading h1 {
  margin-top: 0;
  font-size: 50px;
}
.intro-header .site-heading .subheading,
.intro-header .page-heading .subheading {
  font-size: 24px;
  line-height: 1.1;
  display: block;
  font-family: 'Roboto', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  font-weight: 300;
  margin: 10px 0 0;
}
@media only screen and (min-width: 768px) {
  .intro-header .site-heading h1,
  .intro-header .page-heading h1 {
    font-size: 80px;
  }
}
.intro-header .post-heading h1 {
  font-size: 35px;
}
.intro-header .post-heading .subheading,
.intro-header .post-heading .meta {
  line-height: 1.1;
  display: block;
}
.intro-header .post-heading .subheading {
  font-family: 'Roboto', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  font-size: 24px;
  margin: 10px 0 30px;
  font-weight: 600;
}
.intro-header .post-heading .meta {
  font-family: 'Nunito', 'Roboto', serif;
  font-style: italic;
  font-weight: 300;
  font-size: 20px;
}
.intro-header .post-heading .meta a {
  color: white;
}
@media only screen and (min-width: 768px) {
  .intro-header .post-heading h1 {
    font-size: 55px;
  }
  .intro-header .post-heading .subheading {
    font-size: 30px;
  }
}
.post-preview > a {
  color: #333333;
}
.post-preview > a:hover,
.post-preview > a:focus {
  text-decoration: none;
  color: #1E90FF;
}
.post-preview > a > .post-title {
  font-size: 30px;
  margin-top: 30px;
  margin-bottom: 10px;
}
.post-preview > a > .post-subtitle {
  margin: 0;
  font-weight: 300;
  margin-bottom: 10px;
}
.post-preview > .post-meta {
  color: #777777;
  font-size: 18px;
  font-style: italic;
  margin-top: 0;
}
.post-preview > .post-meta > a {
  text-decoration: none;
  color: #333333;
}
.post-preview > .post-meta > a:hover,
.post-preview > .post-meta > a:focus {
  color: #1E90FF;
  text-decoration: underline;
}
@media only screen and (min-width: 768px) {
  .post-preview > a > .post-title {
    font-size: 36px;
  }
}
.section-heading {
  font-size: 36px;
  margin-top: 60px;
  font-weight: 700;
}
.caption {
  text-align: center;
  font-size: 14px;
  padding: 10px;
  font-style: italic;
  margin: 0;
  display: block;
  border-bottom-right-radius: 5px;
  border-bottom-left-radius: 5px;
}
footer {
  padding: 50px 0 65px;
}
footer .list-inline {
  margin: 0;
  padding: 0;
}
footer .copyright {
  font-size: 14px;
  text-align: center;
  margin-bottom: 0;
}
.floating-label-form-group {
  font-size: 14px;
  position: relative;
  margin-bottom: 0;
  padding-bottom: 0.5em;
  border-bottom: 1px solid #eeeeee;
}
.floating-label-form-group input,
.floating-label-form-group textarea {
  z-index: 1;
  position: relative;
  padding-right: 0;
  padding-left: 0;
  border: none;
  border-radius: 0;
  font-size: 1.5em;
  background: none;
  box-shadow: none !important;
  resize: none;
}
.floating-label-form-group label {
  display: block;
  z-index: 0;
  position: relative;
  top: 2em;
  margin: 0;
  font-size: 0.85em;
  line-height: 1.764705882em;
  vertical-align: middle;
  vertical-align: baseline;
  opacity: 0;
  -webkit-transition: top 0.3s ease,opacity 0.3s ease;
  -moz-transition: top 0.3s ease,opacity 0.3s ease;
  -ms-transition: top 0.3s ease,opacity 0.3s ease;
  transition: top 0.3s ease,opacity 0.3s ease;
}
.floating-label-form-group::not(:first-child) {
  padding-left: 14px;
  border-left: 1px solid #eeeeee;
}
.floating-label-form-group-with-value label {
  top: 0;
  opacity: 1;
}
.floating-label-form-group-with-focus label {
  color: #1E90FF;
}
form .row:first-child .floating-label-form-group {
  border-top: 1px solid #eeeeee;
}
.btn {
  font-family: 'Roboto', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  text-transform: uppercase;
  font-size: 14px;
  font-weight: 800;
  letter-spacing: 1px;
  border-radius: 0;
  padding: 15px 25px;
}
.btn-lg {
  font-size: 16px;
  padding: 25px 35px;
}
.btn-default:hover,
.btn-default:focus {
  background-color: #1E90FF;
  border: 1px solid #1E90FF;
  color: white;
}
.pager {
  margin: 20px 0 0;
}
.pager li > a,
.pager li > span {
  font-family: 'Roboto', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  text-transform: uppercase;
  font-size: 14px;
  font-weight: 800;
  letter-spacing: 1px;
  padding: 15px 25px;
  background-color: white;
  border-radius: 0;
}
.pager li > a:hover,
.pager li > a:focus {
  color: white;
  background-color: #1E90FF;
  border: 1px solid #1E90FF;
}
.pager .disabled > a,
.pager .disabled > a:hover,
.pager .disabled > a:focus,
.pager .disabled > span {
  color: #777777;
  background-color: #333333;
  cursor: not-allowed;
}
::-moz-selection {
  color: white;
  text-shadow: none;
  background: #1E90FF;
}
::selection {
  color: white;
  text-shadow: none;
  background: #1E90FF;
}
img::selection {
  color: white;
  background: transparent;
}
img::-moz-selection {
  color: white;
  background: transparent;
}
    """,
    );
  }
}
