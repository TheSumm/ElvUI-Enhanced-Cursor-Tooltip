# ElvUI Enhanced Cursor Tooltip
* Shows non-player tooltips next to the cursor.
* Player-based tooltips are shown at the location that is configured in ElvUI settings.
* Hides the health bar on tooltips.

## Setup
Configure tooltips to your liking (ElvUI Settings > Tooltip).
In order to adjust the tooltips positioning around the cursor you have to enable the option `Cursor Anchor`.
Afterwards, you can adjust `Cursor Anchor Type` and `Cursor Anchor Offset X`/`Cursor Anchor Offet Y`.
Note: The option `Cursor Anchor` will **not** have any effect since it is controlled by this addon.

## Enabling the health bar
Open Core.lua and change the value of `HIDE_TOOLTIP_HEALTHBAR` to `false`.
