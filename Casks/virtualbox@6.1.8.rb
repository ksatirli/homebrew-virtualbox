cask 'virtualbox@6.1.8' do
  version '6.1.8'
  sha256 '569e91eb3c7cb002d407b236a7aa71ac610cf2ad1afa03730dab11fbd4b89e7c'

  url 'https://download.virtualbox.org/virtualbox/6.1.8/VirtualBox-6.1.8-137981-OSX.dmg'
  appcast 'https://download.virtualbox.org/virtualbox/LATEST.TXT'
  name 'Oracle VirtualBox'
  homepage 'https://www.virtualbox.org/'

  auto_updates false
  conflicts_with cask: 'virtualbox-beta'

  pkg 'VirtualBox.pkg',
      choices: [
                 {
                   'choiceIdentifier' => 'choiceVBoxKEXTs',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'choiceVBox',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'choiceVBoxCLI',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'choiceOSXFuseCore',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
               ]

  postflight do
    # If VirtualBox is installed before `/usr/local/lib/pkgconfig` is created by Homebrew, it creates it itself with incorrect permissions that break other packages
    # See https://github.com/Homebrew/homebrew-cask/issues/68730#issuecomment-534363026
    set_ownership '/usr/local/lib/pkgconfig'
  end

  uninstall script:  {
                       executable: 'VirtualBox_Uninstall.tool',
                       args:       ['--unattended'],
                       sudo:       true,
                     },
            pkgutil: 'org.virtualbox.pkg.*',
            delete:  '/usr/local/bin/vboximg-mount'

  zap trash: [
               '/Library/Application Support/VirtualBox',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.virtualbox.app.virtualbox.sfl*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.virtualbox.app.virtualboxvm.sfl*',
               '~/Library/Preferences/org.virtualbox.app.VirtualBox.plist',
               '~/Library/Preferences/org.virtualbox.app.VirtualBoxVM.plist',
               '~/Library/Saved Application State/org.virtualbox.app.VirtualBox.savedState',
               '~/Library/Saved Application State/org.virtualbox.app.VirtualBoxVM.savedState',
               '~/Library/VirtualBox',
               '~/VirtualBox VMs',
             ]

  caveats do
    kext
  end
end
