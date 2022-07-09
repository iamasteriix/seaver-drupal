# Seaver labs 'The Chemistry In Us"

This is a display site made with Drupal for the monitors at the Seaver North lounge.

### Setting up
The entire architecture of the site runs on a docker container. For development purposes, I include the
instructions to get *a* Drupal site running on a container using `ddev`. You might need to install `ddev`
onto your system before you can run the following commands:

#### Running with DDEV on your localhost
1. Create a directory where you will include all your files and `cd` into it.
1. Run
    ```
    ddev config --project-type=drupal9 --docroot=web --create-docroot --project-name=<your-site-name>
    ddev start
    ```
    You might run into some errors. Don't worry about it, it's probably because we're not done setting up.
    ```
    ddev composer create "drupal/recommended-project" --no-install
    ddev composer require drush/drush --no-install
    ddev composer install
    ddev drush site:install demo_umami -y
    ```
    You will be provided with temporary authentication details. Save them somewhere for now. I suggest your
    *.env* file.
1. Log into your site with `ddev drush uli`.
1. Launch the site with `ddev launch`

> You might run into a few errors during setup. It's probably because of some missing packages in your
> system. Copy and paste them into your internet search box, you're sure to find the solution.