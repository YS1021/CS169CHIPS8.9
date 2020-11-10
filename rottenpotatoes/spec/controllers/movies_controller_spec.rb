require 'rails_helper'

if RUBY_VERSION>='2.6.0'
  if Rails.version < '5'
    class ActionController::TestResponse < ActionDispatch::TestResponse
      def recycle!
        # hack to avoid MonitorMixin double-initialize error:
        @mon_mutex_owner_object_id = nil
        @mon_mutex = nil
        initialize
      end
    end
  else
    puts "Monkeypatch for ActionController::TestResponse no longer needed"
  end
end

# app/controllers/movies_controller.rb
RSpec.describe MoviesController, type: :controller do
  # show
#   describe "show" do
#     it "renders an empty show template" do
#       controller.prepend_view_path 'app/views'
#       controller.append_view_path 'app/views'
#       get :show
#       expect(response).to render_template("show")
#       expect(response.body).to eq ""
#     end
#   end
  
  # index
  describe "GET #index" do
    subject { get :index }

    it "renders the index template" do
      expect(subject).to render_template("movies/index")
    end

    it "does not render a different template" do
      expect(subject).to_not render_template("movies/show")
    end
  end
  
  # similar
  
  # create
  
  # edit
  
  # update
  
  # destroy
  
  # private movie_params

end
