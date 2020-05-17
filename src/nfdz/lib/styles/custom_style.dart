import 'package:web_builder/foundation/web/web_css.dart';

class CustomCss {
  static WebCss build() {
    return WebCss(
      name: "style.css",
      stylesheet: """
.video-responsive{
    overflow:hidden;
    padding-bottom:56.25%;
    position:relative;
    height:0;
}
.video-responsive iframe{
    left:0;
    top:0;
    height:100%;
    width:100%;
    position:absolute;
}
.container a {
    text-decoration: underline;
}
.scrollTop-button {
  display: none;
  position: fixed;
  bottom: 0px;
  right: 0px;
  z-index: 99;
  border: none;
  outline: none;
  background-color: {{ACCENT_COLOR}};
  color: white;
  cursor: pointer;
  padding: 10px;
  font-size: 14px;
  border-top-left-radius: 10px;
  font-family: 'Nunito', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  font-weight: 800;
}
.scrollTop-button:active {
  background-color: #555;
}
.terminal-button {
  position: fixed;
  bottom: 0px;
  left: 0px;
  z-index: 99;
  border: none;
  outline: none;
  background-color: {{ACCENT_COLOR}};
  color: white;
  cursor: pointer;
  padding: 10px;
  font-size: 14px;
  border-top-right-radius: 10px;
  font-family: 'Nunito', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  font-weight: 800;
}
.terminal-button:active {
  background-color: #555;
}
.row-centered {
  text-align:center;
}
.col-centered {
  display:inline-block;
  float:none;
  vertical-align: middle;
  /* reset the text-align */
  text-align:center;
  /* inline-block space fix */
  margin-right:-4px;
}
.col-fixed {
  width:350px;
}
.col-min {
  min-width:280px;
}
.col-max {
  max-width:350px;
}
.section-separator {
  margin-top: 50px;
  margin-bottom: 50px;
}
.left-text {
  text-align: left;
}
.col-section {
}
.unselectable {
  -webkit-user-select: none; /* Chrome/Safari */
  -moz-user-select: none; /* Firefox */
  -ms-user-select: none; /* IE10+ */
  /* Rules below not implemented in browsers yet */
  -o-user-select: none;
  user-select: none;
}
.modal-open {
  overflow: scroll;
}
.contact-email {
  font-size: 14px;
}
@media only screen and (min-width: 768px) {
  .contact-email {
    font-size: 24px;
  }
}
@media only screen and (min-width: 1000px) {
  .col-section {
    padding-left: 40px;
    padding-right: 40px;
  }
}
.menu-headers {
  text-align: center;
  padding: 0;
  margin: 0;
  padding-left: 25px;
  padding-right: 25px;
}
.menu-headers li {
  display: inline-block;
  font-size: 15px;
  padding-left: 10px;
  padding-right: 10px;
  font-family: 'Nunito', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  font-weight: 800;
}
.menu-headers li a {
  outline: 0;
  display: inline-block;
  text-decoration: inherit;
}
.menu-headers li a:hover {
  text-decoration: inherit;
  color: {{ACCENT_COLOR}};
}

/* Timeline styles */

.timeline {
  margin-top: 30px;
  width: 100%;
}
.timeline-entry {
}
.timeline-entry-date {
  text-align: center;
  font-size: 12px;
  color: #3d3d3d;
}
.timeline-entry-button {
  margin-left: 5px;
  text-align: center;
  padding-bottom: 10px;
}
.timeline-entry-title {
  text-align: center;
  font-size: 24px;
  padding-left: 10px;
  font-family: 'Nunito', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  font-weight: 800;
}
.timeline-entry-summary {
  text-align: left;
  padding-bottom: 20px;
  border-bottom: 2px solid #000000;
  display:none
}
.timeline-entry-summary a {
    text-decoration: underline;
}
.timeline-end {
  border: inherit;
}
.timeline-entry-separator {
  height: 15px;
  width: 50.5%;
  border-right: 2px solid black;
}

.timeline-entry-button button {
	position:relative;
	border:0;
	margin:0;
	padding:0;
	cursor:pointer;
	font-size:11px;
	font-weight:normal;
	color:rgba(0,0,0,0);
	background:transparent;
	border-radius:.25rem;
  -webkit-tap-highlight-color: rgba(0,0,0,0);
  -webkit-touch-callout: none;
}

.timeline-entry-button button,
.timeline-entry-button button:after,
.timeline-entry-button button:before {
	padding:4px;
	-webkit-transition:-webkit-transform 0.75s,background-color .125s;
	-moz-transition:-moz-transform 0.75s,background-color .125s;
	-ms-transition:-ms-transform 0.75s,background-color .125s;
	transition:transform 0.75s,background-color .125s;
	-webkit-transform-style:preserve-3d;
	-moz-transform-style:preserve-3d;
	-ms-transform-style:preserve-3d;
	transform-style:preserve-3d;
}

.timeline-entry-button button:after,
.timeline-entry-button button:before {
	position:absolute;
	top:0;
	bottom:0;
	left:0;
	right:0;
	border-radius:.25rem;
	-webkit-backface-visibility:hidden;
	-moz-backface-visibility:hidden;
	-ms-backface-visibility:hidden;
	backface-visibility:hidden;
}

.timeline-entry-button button:before {
	z-index:2;
	color:#fff;
	background-color:#3e87ec;
	content:attr(data-label1);
}

.timeline-entry-button button:after {
	z-index:1;
	color:#fff;
	background-color:#999;
	background-repeat:no-repeat;
	background-position:center center;
	-webkit-transform:rotateX(180deg);
	-moz-transform:rotateX(180deg);
	-ms-transform:rotateX(180deg);
	transform:rotateX(180deg);
	content:attr(data-label2);
}

.timeline-entry-button button:active:before {
	background-color:#3571c8;
}

.timeline-entry-button button.on {
	-webkit-transform:rotateX(180deg);
	-moz-transform:rotateX(180deg);
	-ms-transform:rotateX(180deg);
	transform:rotateX(180deg);
}

/* Projects styles */
.filterable-content-filter {
  text-align: center;
  padding: 0;
  margin: 0;
  margin-bottom: 50px;
}
.filterable-content-filter li {
  display: inline-block;
}
.filterable-content-filter li a {
  font-size: 15px;
  outline: 0;
  background-color: black;
  margin: 8px;
  padding-top: 5px;
  padding-bottom: 5px;
  padding-left: 15px;
  padding-right: 15px;
  display: inline-block;
  color: white;
  text-decoration: inherit;
}
.filterable-content-filter li a:hover {
  text-decoration: inherit;
  background-color: {{ACCENT_COLOR}};
}
.filter-active {
  background-color: {{ACCENT_COLOR}} !important;
}
.filterable-content-grid {
  text-align: center;
}
.filterable-content-grid-item {
  text-align: center;
  margin-left: 10%;
  margin-right: 10%;
  width: 80%;
  display: inherit;
}
/* .project-grid-item img {
} */
.filterable-content-grid-item img:hover {
  cursor: inherit;
}
/* @media only screen and (min-width: 768px) {
  .filterable-content-grid-item h4 {
  }
} */
    """,
    );
  }
}
