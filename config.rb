require './octopress/octopress.rb'

root             = Octopress::config[:root] || "/"
source           = Octopress::config[:source]

# Require any additional compass plugins here.
project_type     = :stand_alone

# Publishing paths
http_path        = root
http_images_path = "/static/images"
http_fonts_path  = "/fonts"
css_dir          = "#{source}/stylesheets"

# Local development paths
sass_dir         = "sass"
images_dir       = "#{source}/images"
fonts_dir        = "#{source}/fonts"

line_comments    = false
output_style     = :compressed