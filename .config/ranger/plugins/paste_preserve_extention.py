from __future__ import (absolute_import, division, print_function)

import os
import time

import ranger.core.actions

# Save the original macro function
PASTE_OLD = ranger.core.actions.Actions.paste

SUFFIX = "_"

def get_safe_path_preserve_extention(self, dst):
    if not os.path.exists(dst):
        return dst

    dst_name, dst_ext = os.path.splitext(dst)

    if not dst_name.endswith(SUFFIX):
        dst_name += SUFFIX
        if not os.path.exists(dst_name + dst_ext):
            return dst_name + dst_ext
    n = 0
    test_dst = dst_name + str(n)
    while os.path.exists(test_dst + dst_ext):
        n += 1
        test_dst = dst_name + str(n)

    return test_dst + dst_ext


# Define a new macro function
def paste_preserve_extention(self, overwrite=False, append=False, dest=None, make_safe_path=None):
    print("test")
    PASTE_OLD(self, overwrite=overwrite, append=append, dest=dest, make_safe_path=get_safe_path_preserve_extention)

# Overwrite the old one
ranger.core.actions.Actions.paste = paste_preserve_extention
