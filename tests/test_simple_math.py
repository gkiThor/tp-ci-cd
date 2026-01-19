import unittest
from src.simple_math import SimpleMath


class TestSimpleMath(unittest.TestCase):
    def test_addition(self):
        self.assertEqual(SimpleMath.addition(2, 3), 5)

    def test_soustraction(self):
        self.assertEqual(SimpleMath.soustraction(10, 4), 6)


if __name__ == "__main__":
    unittest.main()
