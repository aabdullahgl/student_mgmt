import Rails from "@rails/ujs"

import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()

ActiveStorage.start()

import $ from 'jquery';
global.$ = jQuery;


import "bootstrap"
import "css/admin"
import "@fortawesome/fontawesome-free/css/all"

import "./plugins/jquery.easing.min"
// import "./plugins/chart-area-demo"
// import "./plugins/chart-pie-demo"
// import "./plugins/Chart.min"
import "./plugins/sb-admin-2.min"
import "./plugins/bootstrap.bundle.min"

// import "trix"
import "@rails/actiontext"



