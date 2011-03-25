require 'test_helper'

class PoopsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Poop.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Poop.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Poop.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to poop_url(assigns(:poop))
  end
  
  def test_edit
    get :edit, :id => Poop.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Poop.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Poop.first
    assert_template 'edit'
  end

  def test_update_valid
    Poop.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Poop.first
    assert_redirected_to poop_url(assigns(:poop))
  end
  
  def test_destroy
    poop = Poop.first
    delete :destroy, :id => poop
    assert_redirected_to poops_url
    assert !Poop.exists?(poop.id)
  end
end
