class HomeController < ApplicationController
  def index
  end

  def change_color
    ThemeFeature.update_all(color_class: "color-"+params[:color])
  	render :json=>{:class=>ThemeFeature.first.color_class}
  end
  

  def change_font
  	ThemeFeature.update_all(font_family: params[:font_family])
  	render :json=>{:font=>ThemeFeature.first.font_family}
  end

  def change_title
    ThemeFeature.update_all(title: params[:title])
    render :json=>{:title=>ThemeFeature.first.title} 
  end

end
