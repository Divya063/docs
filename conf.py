#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Open Data Kit documentation build configuration file, created by
# sphinx-quickstart on Wed May 24 09:46:59 2017.
#
# This file is execfile()d with the current directory set to its
# containing dir.
#
# Note that not all possible configuration values are present in this
# autogenerated file.
#
# All configuration values have a default; values that are commented out
# serve to show the default.

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
#
# import os
# import sys
# sys.path.insert(0, os.path.abspath('.'))


# -- General configuration ------------------------------------------------

# If your documentation needs a minimal Sphinx version, state it here.
#
# needs_sphinx = '1.0'

# Add any Sphinx extension module names here, as strings. They can be
# extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
# ones.
extensions = ['sphinx.ext.autodoc',
    'sphinx.ext.doctest',
    'sphinx.ext.intersphinx',
    'sphinx.ext.todo',
	'rinoh.frontend.sphinx',
    'sphinx.ext.coverage',
    'sphinx.ext.mathjax']

# Add any paths that contain templates here, relative to this directory.
templates_path = ['_templates']

# The suffix(es) of source filenames.
# You can specify multiple suffix as a list of string:
#
# source_suffix = ['.rst', '.md']
source_suffix = '.rst'

# The master toctree document.
master_doc = 'index'

# General information about the project.
project = 'Open Data Kit'
copyright = '2017, Open Data Kit. This document is licensed under a Creative Commons Attribution 4.0 International License'
author = 'Open Data Kit'

# The version info for the project you're documenting, acts as replacement for
# |version| and |release|, also used in various other places throughout the
# built documents.
#
# The short X.Y version.
version = '1.0'
# The full version, including alpha/beta/rc tags.
release = '1.0'

# The language for content autogenerated by Sphinx. Refer to documentation
# for a list of supported languages.
#
# This is also used if you do content translation via gettext catalogs.
# Usually you set "language" from the command line for these cases.
language = None

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
# This patterns also effect to html_static_path and html_extra_path
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']

# The name of the Pygments (syntax highlighting) style to use.
pygments_style = 'default'

# If true, `todo` and `todoList` produce output, else they produce nothing.
todo_include_todos = True


# -- Options for HTML output ----------------------------------------------

# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.
#
html_theme = "sphinx_rtd_theme"

# Add logo stuff
html_logo = '_static/img/odk-logo-wide.png'
html_theme_options = {
    'logo_only': True,
    'display_version': False,
}
html_title = "Open Data Kit Docs"

html_favicon = "_static/img/odk-favicon.ico"

# Theme options are theme-specific and customize the look and feel of a theme
# further.  For a list of options available for each theme, see the
# documentation.
#
# html_theme_options = {}

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
html_static_path = ['_static']

# Add paths that contain extra files which are not directly related to the 
# documentation and which are are copied to the output directory.
html_extra_path = ['vid']

# -- Options for HTMLHelp output ------------------------------------------

# Output file base name for HTML help builder.
htmlhelp_basename = 'OpenDataKitdoc'


# -- Options for LaTeX output ---------------------------------------------

latex_elements = {
    # The paper size ('letterpaper' or 'a4paper').
        
     'papersize': 'letterpaper',

    # The font size ('10pt', '11pt' or '12pt').
    #
     'pointsize': '10pt',

    # Additional stuff for the LaTeX preamble.
    #
    # 'preamble': '',

    # Latex figure (float) alignment
    #
    # 'figure_align': 'htbp',
}

# Grouping the document tree into LaTeX files. List of tuples
# (source start file, target name, title,
#  author, documentclass [howto, manual, or own class]).
latex_documents = [
    (master_doc, 'OpenDataKit.tex', 'Open Data Kit Documentation',
     'Open Data Kit', 'manual'),
]


# -- Options for manual page output ---------------------------------------

# One entry per manual page. List of tuples
# (source start file, name, description, authors, manual section).
man_pages = [
    (master_doc, 'opendatakit', 'Open Data Kit Documentation',
     [author], 1)
]


# -- Options for Texinfo output -------------------------------------------

# Grouping the document tree into Texinfo files. List of tuples
# (source start file, target name, title, author,
#  dir menu entry, description, category)
texinfo_documents = [
    (master_doc, 'OpenDataKit', 'Open Data Kit Documentation',
     author, 'OpenDataKit', 'One line description of project.',
     'Miscellaneous'),
]



# -- Options for Epub output ----------------------------------------------

# Bibliographic Dublin Core info.
epub_title = project
epub_author = author
epub_publisher = author
epub_copyright = copyright

# The unique identifier of the text. This can be a ISBN number
# or the project homepage.
#
# epub_identifier = ''

# A unique identification for the text.
#
# epub_uid = ''

# A list of files that should not be packed into the epub file.
epub_exclude_files = ['search.html']



# Example configuration for intersphinx: refer to the Python standard library.
intersphinx_mapping = {'https://docs.python.org/': None}

# Add custom CSS

def setup(app):
    app.add_stylesheet('css/custom.css')
    

# At top of every document

rst_prolog="""
.. role:: th
    :class: th
    
.. role:: tc
    :class: tc

.. role:: formstate
    :class: formstate
    
.. role:: gesture
    :class: gesture
"""

# At bottom of every document
prob_in_doc = """

If you find a problem with this documentation, please 

"""
file_issue = """

file an issue

"""
file_issue_here = """

https://github.com/opendatakit/docs/issues

"""
contri_start = """

You are also encouraged to

"""
fork_repo = """

fork our Github repo 

"""
repo_here = """ 

https://github.com/opendatakit/docs/

"""
join = """ 

and 

"""
contri = """

become a contributor

""" 
contri_guide = """

/contributing/

"""
faq_help = """

If you still need help, you can ask support questions in the

"""
forum = """

ODK Forum

"""
forum_here = """

https://forum.opendatakit.org/

"""
html_context = {'prob_in_doc' : prob_in_doc , 
                'contri_start' : contri_start , 
                'join' : join , 
                'faq_help' : faq_help , 
                'file_issue' : file_issue , 
                'fork_repo' : fork_repo ,
                'contri' : contri , 
                'forum' : forum , 
                'file_issue_here' : file_issue_here , 
                'repo_here' : repo_here , 
                'contri_guide' : contri_guide , 
                'forum_here' : forum_here}

