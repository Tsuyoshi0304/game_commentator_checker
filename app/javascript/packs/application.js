// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

require('jquery')
import "chartkick/chart.js"
require('simplified/searches/new')
require('normal/searches/new')
require('normal/searches/gamegenre')
require('header')
require('footer')
require('commentator_searches')
require('users/diagnosis_histories')
require('profiles/preview')
require('rankings/ranking')

window.$ = jQuery;

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

//import 'bootstrap'
//import '../stylesheets/application.scss'
