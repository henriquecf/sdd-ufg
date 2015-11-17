require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe KnowledgeGroupsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # KnowledgeGroup. As you add validations to KnowledgeGroup, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # KnowledgeGroupsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all knowledge_groups as @knowledge_groups" do
      knowledge_group = KnowledgeGroup.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:knowledge_groups)).to eq([knowledge_group])
    end
  end

  describe "GET #show" do
    it "assigns the requested knowledge_group as @knowledge_group" do
      knowledge_group = KnowledgeGroup.create! valid_attributes
      get :show, {:id => knowledge_group.to_param}, valid_session
      expect(assigns(:knowledge_group)).to eq(knowledge_group)
    end
  end

  describe "GET #new" do
    it "assigns a new knowledge_group as @knowledge_group" do
      get :new, {}, valid_session
      expect(assigns(:knowledge_group)).to be_a_new(KnowledgeGroup)
    end
  end

  describe "GET #edit" do
    it "assigns the requested knowledge_group as @knowledge_group" do
      knowledge_group = KnowledgeGroup.create! valid_attributes
      get :edit, {:id => knowledge_group.to_param}, valid_session
      expect(assigns(:knowledge_group)).to eq(knowledge_group)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new KnowledgeGroup" do
        expect {
          post :create, {:knowledge_group => valid_attributes}, valid_session
        }.to change(KnowledgeGroup, :count).by(1)
      end

      it "assigns a newly created knowledge_group as @knowledge_group" do
        post :create, {:knowledge_group => valid_attributes}, valid_session
        expect(assigns(:knowledge_group)).to be_a(KnowledgeGroup)
        expect(assigns(:knowledge_group)).to be_persisted
      end

      it "redirects to the created knowledge_group" do
        post :create, {:knowledge_group => valid_attributes}, valid_session
        expect(response).to redirect_to(KnowledgeGroup.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved knowledge_group as @knowledge_group" do
        post :create, {:knowledge_group => invalid_attributes}, valid_session
        expect(assigns(:knowledge_group)).to be_a_new(KnowledgeGroup)
      end

      it "re-renders the 'new' template" do
        post :create, {:knowledge_group => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested knowledge_group" do
        knowledge_group = KnowledgeGroup.create! valid_attributes
        put :update, {:id => knowledge_group.to_param, :knowledge_group => new_attributes}, valid_session
        knowledge_group.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested knowledge_group as @knowledge_group" do
        knowledge_group = KnowledgeGroup.create! valid_attributes
        put :update, {:id => knowledge_group.to_param, :knowledge_group => valid_attributes}, valid_session
        expect(assigns(:knowledge_group)).to eq(knowledge_group)
      end

      it "redirects to the knowledge_group" do
        knowledge_group = KnowledgeGroup.create! valid_attributes
        put :update, {:id => knowledge_group.to_param, :knowledge_group => valid_attributes}, valid_session
        expect(response).to redirect_to(knowledge_group)
      end
    end

    context "with invalid params" do
      it "assigns the knowledge_group as @knowledge_group" do
        knowledge_group = KnowledgeGroup.create! valid_attributes
        put :update, {:id => knowledge_group.to_param, :knowledge_group => invalid_attributes}, valid_session
        expect(assigns(:knowledge_group)).to eq(knowledge_group)
      end

      it "re-renders the 'edit' template" do
        knowledge_group = KnowledgeGroup.create! valid_attributes
        put :update, {:id => knowledge_group.to_param, :knowledge_group => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested knowledge_group" do
      knowledge_group = KnowledgeGroup.create! valid_attributes
      expect {
        delete :destroy, {:id => knowledge_group.to_param}, valid_session
      }.to change(KnowledgeGroup, :count).by(-1)
    end

    it "redirects to the knowledge_groups list" do
      knowledge_group = KnowledgeGroup.create! valid_attributes
      delete :destroy, {:id => knowledge_group.to_param}, valid_session
      expect(response).to redirect_to(knowledge_groups_url)
    end
  end

end
