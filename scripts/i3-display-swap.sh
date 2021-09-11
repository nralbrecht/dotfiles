#!/usr/bin/env bash
# requires jq

DISPLAY_PRIMARY=$1 # DP-0
DISPLAY_SECONDARY=$2 # DP-2

WORKSPACE_PRIMARY=$(i3-msg -t get_outputs | jq -r ".[] | select(.name==\"$DISPLAY_PRIMARY\") | .current_workspace")
WORKSPACE_SECONDARY=$(i3-msg -t get_outputs | jq -r ".[] | select(.name==\"$DISPLAY_SECONDARY\") | .current_workspace")

WORKSPACE_FOCUSED=$(i3-msg -t get_workspaces | jq -r ".[] | select(.focused==true) | .name")

echo $DISPLAY_PRIMARY $WORKSPACE_PRIMARY
echo $DISPLAY_SECONDARY $WORKSPACE_SECONDARY

# swap workspaces
i3-msg -- workspace --no-auto-back-and-forth "$WORKSPACE_PRIMARY"
i3-msg -- move workspace to output "$DISPLAY_SECONDARY"

i3-msg -- workspace --no-auto-back-and-forth "$WORKSPACE_SECONDARY"
i3-msg -- move workspace to output "$DISPLAY_PRIMARY"

# i3-msg "rename workspace $WORKSPACE_PRIMARY to temporary; rename workspace $WORKSPACE_SECONDARY to $WORKSPACE_PRIMARY; rename workspace temporary to $WORKSPACE_SECONDARY"

# focus last focused workspace
if [ "$WORKSPACE_FOCUSED" == "$WORKSPACE_PRIMARY" ] || [ "$WORKSPACE_FOCUSED" == "$WORKSPACE_SECONDARY" ]; then
    i3-msg -- workspace --no-auto-back-and-forth "$WORKSPACE_FOCUSED"
fi
