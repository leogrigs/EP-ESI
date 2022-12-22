require 'rails_helper'

RSpec.describe Post, type: :model do
  current_user = User.first_or_create!(email: 'dean@example.com', password: 'password', password_confirmation: 'password')

  it 'preencheu nome vazio' do
    post = Post.new(
      title: 'Erro',
      body: 'Nome está vazio. Tente novamente.',
      user: current_user,
      views: 0
    )
    expect(post).to_not be_valid

    post.title = 'Has a title'
    expect(post).to be_valid
  end
  
  
  
  it 'preencheu senha vazia' do
    post = Post.new(
      title: 'Erro',
      body: 'Senha está vazia. Tente novamente',
      user: current_user,
      views: 0
    )
    expect(post).to_not be_valid
    
    
  
  end

  it 'nome com no minimo 5 caracteres' do
    post = Post.new(
      title: '1',
      body: 'Ana',
      user: current_user,
      views: 0
    )
    expect(post).to_not be_valid

    post.body = 'Leandro'
    expect(post).to be_valid
  end
  
  
  

  it 'has a body between 5 and 100 characters' do
    post = Post.new(
      title: '12',
      body: '1234',
      user: current_user,
      views: 0
    )
    expect(post).to_not be_valid

    post.body = '12345'
    expect(post).to be_valid

    char_100 = 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean m'
    post.body = char_100
    expect(post).to be_valid

    post.body = hundred_char_string + '1'
    expect(post).to_not be_valid
  end

  it 'views numericas' do
    post = Post.new(
      title: '12',
      body: '1234',
      user: current_user,
      views: 0
    )
    expect(post.views).to be_a(Integer)
  end
end
