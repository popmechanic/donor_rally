<?php
/**
 * Implementation of hook_form_FORM_ID_alter().
 *
 * Allows the profile to alter the site-configuration form. This is
 * called through custom invocation, so $form_state is not populated.
 */
function donor_rally_install_configure_form_alter(&$form, $form_state, $form_id) {
  // Set default for site name field.
  $form['site_information']['site_name']['#default_value'] = $_SERVER['SERVER_NAME'];
}

/**
 * TODO move to .install.
 * Additional modules to enable.
 */
function  _donor_rally_modules() {
  $modules = array(
    // Modules required by the features below.
    'boxes',
    'content_permissions',
    'content_profile',
    'content_profile_registration',
    'context',
    'context_ui',
    'dr_base',
    'fieldgroup',
    'filefield',
    'filefield_paths',
    'imageapi',
    'imageapi_gd',
    'imagecache',
    'imagefield',
    'imagefield_tokens',
    'jquery_ui',
    'location', // @TODO use something other than the location module.
    'number',
    'og',
    'og_access',
    'purl',
    'spaces',
    'spaces_dashboard',
    'spaces_og',
    'text',
    'views_bonus_export',
    'views_or',

    // Social networking modules.
    'forward',
    'forward_services',
    'general_services',
    'service_links',
    'shorten',
    'shorturl',

    // Donor Rally features.
    'dr_campaign', 'dr_blog', 'dr_social',
  );

  // Enable selected Donor Rally payment gateway.
  switch (variable_get('dr_base_payment_gateway', '')) {
    case 'dr_paypal':
      $modules = array_merge($modules, array(
        'simple_payments',
        'simple_payments_paypal',
        'dr_paypal',
      ));
      break;

    case 'dr_salsa':
      $modules = array_merge($modules, array(
        'salsa_api',
        'dr_salsa',
      ));
      break;
  }
    
  return $modules;
}

/**
 * Set Donor Rally as the default install profile.
 */
if (!function_exists('system_form_install_select_profile_form_alter')) {
  function system_form_install_select_profile_form_alter(&$form, $form_state) {
    foreach($form['profile'] as $key => $element) {
      $form['profile'][$key]['#value'] = 'donor_rally';
    }
  }
}
