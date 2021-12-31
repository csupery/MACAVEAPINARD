class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if resource.my_wine_cellar.count == 1
      my_wine_cellar_path(resource.my_wine_cellars[0])
    elsif resource.my_wine_cellar.count == 0
      new_wine_cellar_path
    else
      my_wine_cellars_path
    end
  end
end
