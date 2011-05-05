#!/bin/bash
#
# This command expects to be run within the Donor Rally profile directory. To
# generate a full distribution for you it must be a CVS checkout.
#
# To use this command you must have `drush make`, `cvs` and `git` installed.
#
# Original script by Jeff Miccolis for Open Atrium.
#

if [ -f donor_rally.make ]; then
  echo -e "\nThis command can be used to run donor_rally.make in place, or to generate"
  echo -e "a complete distribution of Donor Rally.\n\nWhich would you like?"
  echo "  [1] Rebuild Donor Rally in place (overwrites any changes!)."
  echo "  [2] Build a full Donor Rally distribution"
  echo -e "Selection: \c"
  read SELECTION

  if [ $SELECTION = "1" ]; then

    # Run donor_rally.make only.
    echo "Building Donor Rally install profile..."
    rm -Rf modules/ themes/ libraries/
    drush -y make --working-copy --no-core --contrib-destination=. donor_rally.make

  elif [ $SELECTION = "2" ]; then

    # Generate a complete tar.gz of Drupal + Donor Rally.
    echo "Building Donor Rally distribution..."

MAKE=$(cat <<EOF
core = "6.x"\n
api = 2\n
projects[drupal][version] = "6.19"\n
projects[donor_rally][type] = "profile"\n
projects[donor_rally][download][type] = "git"\n
projects[donor_rally][download][url] = "git://github.com/opensourcery/donor_rally.git"\n
projects[donor_rally][download][tag] = "DRUPAL-6--1-0-ALPHA1"
EOF
)
    
      NAME="donor_rally"
      echo -e $MAKE | drush make --yes --tar - $NAME
  else
   echo "Invalid selection."
  fi
else
  echo 'Could not locate file "donor_rally.make"'
fi
