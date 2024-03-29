cask 'iterm2-highsierra' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '3.3.12'
  sha256 '6811b520699e8331b5d80b5da1e370e0ed467e68bc56906f08ecfa986e318167'

  url "https://iterm2.com/downloads/stable/iTerm2-#{version.dots_to_underscores}.zip"
  livecheck 'https://iterm2.com/appcasts/final.xml'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'iTerm.app'

  zap trash: [
               '~/Library/Application Support/iTerm',
               '~/Library/Application Support/iTerm2',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.iterm2.sfl*',
               '~/Library/Caches/com.googlecode.iterm2',
               '~/Library/Preferences/com.googlecode.iterm2.plist',
               '~/Library/Saved Application State/com.googlecode.iterm2.savedState',
             ]
end
