require 'spec_helper'

describe 'Routing to StaticPagesController' do
  it 'routes GET /who-we-are to #who_we_are' do
    {get: '/who-we-are'}.should route_to('static_pages#who_we_are')
  end

  it 'routes GET /static_pages/home to #home' do
    {get: '/static_pages/home'}.should route_to('static_pages#home')
  end

  it 'routes GET /static_pages/about to #about' do
    {get: '/static_pages/about'}.should route_to('static_pages#about')
  end

end