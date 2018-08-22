require 'user_content'

class PagesController < ApplicationController
  def home
  end

  def command_injection
  end

  def sql_injection
  end

  def search1
    render 'command_injection'
  end

  def search2
    @users = User.where(username: params[:search])
    render 'sql_injection'
  end

  def xxe
  end

  def content1
    xml_doc  = Nokogiri::XML(params[:content])

    @content = xml_doc

    render 'xxe'
  end

  def xss
  end

  def content2
    @content = params[:content]

    render 'xss'
  end

  def insecure_deserialization
    @content = User.read_content
  end
end