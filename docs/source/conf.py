import sys
import os
import shutil
from pathlib import Path

# Get the absolute path of the directory containing conf.py
dir_path = Path(__file__).parent.absolute()

# Combine this with the relative path to get the absolute path to plantuml.jar
plantuml_jar_path = dir_path / 'plantuml.jar'

plantuml = f'java -jar {plantuml_jar_path}'

# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'CMake_utils'
copyright = '2023, Laszlo Ivanyi'
author = 'Laszlo Ivanyi'
release = '1.0.0.'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = ['m2r',
              'sphinx_rtd_dark_mode',
              'sphinxcontrib.plantuml',
              'sphinxcontrib.datatemplates',
              'sphinxcontrib.drawio']

templates_path = ['_templates']
exclude_patterns = []


# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_theme = 'sphinx_rtd_theme'
html_static_path = ['_static']
html_css_files = [
    'decorator.css',
]
html_output_folder = '.'
html_logo = '_static/connection.png'
