# Nix-Darwin Configuration
The following nix flake is setup for my personal mac work space.

## Manaul steps before loading flake
* Allow terminal you're using to have full disk access via
`System Settings > Privacy & Security > Full Disk Access`
* Create 5 desktops for switching between

# Manual steps after flake is loaded
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
