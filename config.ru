$: << File.expand_path('../lib', __FILE__)

require 'rubygems'
require 'paper_tray'

map('/') { run PaperTray::App }
