from __future__ import (absolute_import, division, print_function)
from ranger.api.commands import Command
from ranger.core.actions import Actions

import os
from random import randint

class random_select(Command):
    """:random_select

    Selects a random element in current view.
    """

    def execute(self):
        file_list = self.fm.thisdir.files

        self.fm.select_file(file_list[randint(0,len(file_list) -1)].path)

    def tab(self, tabnum):
        return self._tab_directory_content()
