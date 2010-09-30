require 'spec_helper'

describe TalksController do

  def mock_talk(stubs={})
    # @mock_talk ||= mock_model(Talk, stubs).as_null_object
    @talk ||= Factory(:talk)
  end

  describe "GET index" do
    it "assigns all talks as @talks" do
      Talk.stub(:all) { [mock_talk] }
      get :index, :event_id => @talk.event.id
      assigns(:talks).should eq([mock_talk])
    end
  end

  describe "GET show" do
    it "assigns the requested talk as @talk" do
      pending "until I figure out how to use factories with associations"
      Talk.stub(:find).with("37") { mock_talk }
      get :show, :id => "37"
      assigns(:talk).should be(mock_talk)
    end
  end

  describe "GET new" do
    it "assigns a new talk as @talk" do
      pending "until I figure out how to use factories with associations"
      Talk.stub(:new) { mock_talk }
      get :new
      assigns(:talk).should be(mock_talk)
    end
  end

  describe "GET edit" do
    it "assigns the requested talk as @talk" do
      pending "until I figure out how to use factories with associations"
      Talk.stub(:find).with("37") { mock_talk }
      get :edit, :id => "37"
      assigns(:talk).should be(mock_talk)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created talk as @talk" do
        pending "until I figure out how to use factories with associations"
        Talk.stub(:new).with({'these' => 'params'}) { mock_talk(:save => true) }
        post :create, :talk => {'these' => 'params'}
        assigns(:talk).should be(mock_talk)
      end

      it "redirects to the created talk" do
        pending "until I figure out how to use factories with associations"
        Talk.stub(:new) { mock_talk(:save => true) }
        post :create, :talk => {}
        response.should redirect_to(talk_url(mock_talk))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved talk as @talk" do
        pending "until I figure out how to use factories with associations"
        Talk.stub(:new).with({'these' => 'params'}) { mock_talk(:save => false) }
        post :create, :talk => {'these' => 'params'}
        assigns(:talk).should be(mock_talk)
      end

      it "re-renders the 'new' template" do
        pending "until I figure out how to use factories with associations"
        Talk.stub(:new) { mock_talk(:save => false) }
        post :create, :talk => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested talk" do
        pending "until I figure out how to use factories with associations"
        Talk.should_receive(:find).with("37") { mock_talk }
        mock_talk.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :talk => {'these' => 'params'}
      end

      it "assigns the requested talk as @talk" do
        pending "until I figure out how to use factories with associations"
        Talk.stub(:find) { mock_talk(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:talk).should be(mock_talk)
      end

      it "redirects to the talk" do
        pending "until I figure out how to use factories with associations"
        Talk.stub(:find) { mock_talk(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(talk_url(mock_talk))
      end
    end

    describe "with invalid params" do
      it "assigns the talk as @talk" do
        pending "until I figure out how to use factories with associations"
        Talk.stub(:find) { mock_talk(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:talk).should be(mock_talk)
      end

      it "re-renders the 'edit' template" do
        pending "until I figure out how to use factories with associations"
        Talk.stub(:find) { mock_talk(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested talk" do
      pending "until I figure out how to use factories with associations"
      Talk.should_receive(:find).with("37") { mock_talk }
      mock_talk.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the talks list" do
      pending "until I figure out how to use factories with associations"
      Talk.stub(:find) { mock_talk }
      delete :destroy, :id => "1"
      response.should redirect_to(talks_url)
    end
  end

end
