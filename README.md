# Homebrew: VirtualBox

> Homebrew Tap for VirtualBox

## Table of Contents

- [Homebrew: VirtualBox](#homebrew-virtualbox)
  - [Table of Contents](#table-of-contents)
  - [Requirements](#requirements)
  - [Usage](#usage)
    - [Installing a Cask](#installing-a-cask)
  - [Contributing](#contributing)
    - [Adding or Updating Casks](#adding-or-updating-casks)
  - [Notes](#notes)
  - [Author Information](#author-information)
  - [License](#license)

## Requirements

- [Homebrew](https://github.com/Homebrew/brew)
- macOS Mojave or macOS Catalina

## Usage

Install this repository using the [brew tap](https://docs.brew.sh/Taps#the-brew-tap-command) command:

```sh
brew tap operatehappy/homebrew-virtualbox
```

This Tap provides an exhaustive range of the following applications:

- VirtualBox `>= 6.0.0_BETA1` and `<= 6.1.4`

### Installing a Cask

Once the Tap is installed, you can use the [brew cask install](https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap#installing) commands to install a Cask:

```sh
brew cask install product@X.Y.Z
```

For example, to install _VirtualBox 6.1.0_  you would use the following:

```sh
brew cask install virtualbox@6.1.0
```

## Contributing

The [operatehappy/homebrew-tools](https://github.com/operatehappy/homebrew-tools) repository includes _tools_ that assist with the generation of _Casks_ for this and other [@operatehappy-maintained Taps](https://github.com/search?q=org%3Aoperatehappy+homebrew-tap).

The associated [README.md](https://github.com/operatehappy/homebrew-tools/blob/master/README.md) contains extensive information that outlines the steps to add and update Casks.

## Notes

- An exhaustive list of versions, is available via [VERSIONS.sh](https://github.com/operatehappy/homebrew-virtualbox/blob/master/VERSIONS.sh)

- Software Virtualization is supported in VirtualBox `6.0.x` only, it has been discontinued in `6.1.x`

## Author Information

This tap is maintained by the contributors listed on [GitHub](https://github.com/operatehappy/homebrew-virtualbox/graphs/contributors).

Development of this module was sponsored by [Operate Happy](https://github.com/operatehappy).

Additionally, a special thanks goes out to the contributors of Brew's `homebrew-core` formulae:

- [virtualbox.rb](https://github.com/Homebrew/homebrew-cask/blob/master/Casks/virtualbox.rb)

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
