cask 'camtasia2' do
  version :latest
  sha256 :no_check

  url 'https://download.techsmith.com/camtasiamac/enu/2108/camtasia.dmg'
  livecheck 'https://techsmithredirect.appspot.com/cmac?target=sparkleappcast&product=camtasiamac&lang=enu&ver=2.10.8&os=mac&code=none',
          :checkpoint => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b856'
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  app 'Camtasia 2.app'
end
