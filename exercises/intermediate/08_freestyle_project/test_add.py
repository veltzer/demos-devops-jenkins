"""
A simple module testing the add module
"""

import mod_add


def test_add() -> None:
    assert mod_add.add(2,2)==4

def test_add2() -> None:
    assert mod_add.add(3,3)==6
