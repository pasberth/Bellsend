# -*- coding: utf-8 -*-

import sys, os

extensions = []

templates_path = []
source_suffix = '.rst'
master_doc = 'index'
project = u'Bellsend'
copyright = u'2012-2013, Pasberth'
version = '0.0.0'
release = '0.0.0'

pygments_style = 'sphinx'

html_theme = 'haiku'

html_static_path = ['.static']

html_title = "Bellsend"
html_short_title = html_title

html_theme = "pasberth"
html_theme_path = ['theme']
html_theme_options = {
  "nosidebar": True,
  "related": True,
}
