require 'bundler'
Bundler.require

module PaperTray
  class App < Sinatra::Base
    get '/' do
      'Testing'
    end
  end

  def self.env
    @env ||= ActiveSupport::StringInquirer.new(ENV['RACK_ENV'] || 'development')
  end

  def self.repo
    @repo ||= Grit::Repo.new('paper_tray')
  end
end
