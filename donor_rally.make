; $Id$
api = 2
core = "7.x"

; Includes
includes[drupal-org] = "drupal-org.make"

; Keep only patches and external projects in here until such a time
; that drupal.org supports these.

; Donor Rally features
projects[donor_rally_features][type] = "module"
projects[donor_rally_features][download][type] = "git"
projects[donor_rally_features][download][branch] = "7.x-1.x"

; Contrib
projects[service_links][subdir] = "contrib"
projects[service_links][download][type] = "git"
projects[service_links][download][branch] = "7.x-2.x"

projects[spaces][subdir] = "contrib"
projects[spaces][type] = "module"
projects[spaces][download][type] = "git"
projects[spaces][download][branch] = "7.x-1.x"
; http://drupal.org/node/976324#comment-4354134
; TODO reroll for 7.x
; projects[spaces][patch][] = "http://drupal.org/files/issues/spaces.976324-08.patch"


projects[views][subdir] = "contrib"
projects[views][version] = "3.0-beta3"

; Themes
projects[huddle][type] = "theme"
projects[huddle][download][type] = "git"
projects[huddle][download][url] = "git://github.com/opensourcery/huddle.git"
projects[huddle][download][branch] = "7.x-1.x"
