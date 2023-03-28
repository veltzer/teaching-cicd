import unittest
from add import add


class TestBasic(unittest.TestCase):
    def test_add(self):
        print("I'm testing that 2+2 is 4")
        self.assertEqual(add(2,2), 4)
    def test_add_big_numbers(self):
        self.assertEqual(add(100,100), 200)
    def test_add_big_numbers2(self):
        self.assertEqual(add(100,100), 200)
