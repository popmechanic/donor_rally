; $Id$
api = 2
core = "6.x"

; Includes
includes[drupal-org] = "drupal-org.make"

; Keep only patches and external projects in here until such a time
; that drupal.org supports these.

; Donor Rally features
projects[donor_rally_features][type] = "module"
projects[donor_rally_features][download][type] = "git"
projects[donor_rally_features][download][url] = "git@github.com:opensourcery/donor_rally_features.git"

; Contrib
projects[salsa_api][subdir] = "contrib"
projects[salsa_api][type] = "module"
projects[salsa_api][download][type] = "cvs"
projects[salsa_api][download][module] = "contributions/modules/salsa_api"
projects[salsa_api][download][revision] = "DRUPAL-6--2:2009-07-22"

projects[service_links][subdir] = "contrib"
projects[service_links][type] = "module"
projects[service_links][download][type] = "cvs"
projects[service_links][download][module] = "contributions/modules/service_links"
projects[service_links][download][revision] = "DRUPAL-6--2:2010-07-10"

; This version works with php 5.3
projects[vertical_tabs][subdir] = "contrib"
projects[vertical_tabs][type] = "module"
projects[vertical_tabs][download][type] = "cvs"
projects[vertical_tabs][download][module] = "contributions/modules/vertical_tabs"
projects[vertical_tabs][download][revision] = "DRUPAL-6--1:2010-02-09"

projects[views_or][subdir] = "contrib"
projects[views_or][type] = "module"
projects[views_or][download][type] = "cvs"
projects[views_or][download][module] = "contributions/modules/views_or"
projects[views_or][download][revision] = "DRUPAL-6--2:2009-08-12"

; Patched projects

projects[simple_payments][subdir] = "contrib"
projects[simple_payments][type] = "module"
projects[simple_payments][download][type] = "cvs"
projects[simple_payments][download][module] = "contributions/modules/simple_payments"
projects[simple_payments][download][revision] = ":2010-08-08"
; http://drupal.org/node/839952#comment-3515550
projects[simple_payments][patch][] = "http://drupal.org/files/issues/simple_payments.839952.patch"
; http://drupal.org/node/869142#comment-3267326
projects[simple_payments][patch][] = "http://drupal.org/files/issues/simple_payments-869142-views-support.patch"

projects[views][subdir] = "contrib"
projects[views][version] = "2.11"
; http://drupal.org/node/862072
projects[views][patch][] = "http://drupal.org/files/issues/views.862072.patch"

; Themes
projects[zen][version] = "2.0"
; http://drupal.org/node/634552#comment-3244662
projects[zen][patch][] = "http://drupal.org/files/issues/zen-634552_0.patch"

projects[doune][type] = "theme"
projects[doune][download][type] = "git"
projects[doune][download][url] = "git@github.com:opensourcery/doune.git"

projects[huddle][type] = "theme"
projects[huddle][download][type] = "git"
projects[huddle][download][url] = "git@github.com:opensourcery/huddle.git"

; Libraries
libraries[jquery_ui][download][type] = "get"
libraries[jquery_ui][download][url] = "http://jquery-ui.googlecode.com/files/jquery.ui-1.6.zip"
libraries[jquery_ui][directory_name] = "jquery.ui"
libraries[jquery_ui][destination] = "modules/contrib/jquery_ui"

