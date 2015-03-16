describe Payanyway::Engine, type: :routing do
  routes { Payanyway::Engine.routes }

  context 'payanyway' do
    specify { get('/success').should route_to(
       controller: 'payanyway',
       action: 'success'
    )}

    specify { get('/pay').should route_to(
      controller: 'payanyway',
      action: 'pay'
    )}

    specify { get('/fail').should route_to(
      controller: 'payanyway',
      action: 'fail'
    )}
  end
end