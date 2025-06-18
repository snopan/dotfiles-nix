# Nix-Darwin Configuration
The following nix flake is setup for my personal mac work space.

## Getting Started
The following instructions is for setting up a fresh new macbook.

1. Get Determinate Nix through this one liner, sourced from [here](https://github.com/DeterminateSystems/nix-installer?tab=readme-ov-file#determinate-nix-installer)
```
curl -fsSL https://install.determinate.systems/nix | sh -s -- install --determinate
```
2. Before running flake, make sure the terminal used to run commands after should have full disk access via
`System Settings > Privacy & Security > Full Disk Access`
3. Installing `nix-darwin` and loading flake from Github
```
sudo nix run nix-darwin/nix-darwin-25.05#darwin-rebuild -- switch --flake github:snopan/dotfiles-nix
```
## Manual Steps
After the flake is applied there are a list of manual steps to take
* Create 5 desktops for switching between
* Open Raycast and set hotkey to CMD + Space
* Allow raycast to have full disk access via
`System Settings > Privacy & Security > Full Disk Access` so VSCodium via Raycast can load Nix flake
* Allow accessibility for `unnaturalscrollwheels`
* Running VSCodium not through terminal requires installing Rosetta, this should pop up when openning it through Raycast
* Configure Bitwarden
    * Turn on "Show menu bar icon"
    * Turn on "Minimize to menu bar"
    * Turn on "Close to menu bar"
    * Turn on "Start to menu bar"
    * Turn on "Enable SSH Agent"
    * Set to not ask for authorization when using SSH Agent (not implemented yet)
    * Turn off "Allow screen capture"

## Editing Flake
1. Clone down the flake repository in `/etc`
```
cd /etc
git clone git@github.com:nix-darwin/nix-darwin.git
```
2. Set folder permissions according to what nix-darwin [suggests](https://github.com/nix-darwin/nix-darwin?tab=readme-ov-file#getting-started)
```
sudo chown $(id -nu):$(id -ng) /etc/nix-darwin
```
2. Apply flake via `darwin-rebuild`, this assumes `nix-darwin` has been installed
```
sudo darwin-rebuild switch
```
