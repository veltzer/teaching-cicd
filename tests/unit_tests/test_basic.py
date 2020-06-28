import unittest
from add import add


class TestBasic(unittest.TestCase):
    def test_add(self):
        self.assertEqual(add(2,2), 5)
