'''
Test markdown.py with unittest
To run tests:
    python test_markdown_unittest.py
'''

import unittest
from markdown_adapter import run_markdown

class TestMarkdownPy(unittest.TestCase):

    def setUp(self):
        pass

    def test_non_marked_lines(self):
        '''
        Non-marked lines should only get 'p' tags around all input
        '''
        self.assertEqual( 
                run_markdown('this line has no special handling'), 
                '<p>this line has no special handling</p>')

    def test_em(self):
        '''
        Lines surrounded by asterisks should be wrapped in 'em' tags
        '''
        self.assertEqual( 
                run_markdown('*this should be wrapped in em tags*'),
                '<p><em>this should be wrapped in em tags</em></p>')

    def test_strong(self):
        '''
        Lines surrounded by double asterisks should be wrapped in 'strong' tags
        '''
        self.assertEqual( 
                run_markdown('**this should be wrapped in strong tags**'),
                '<p><strong>this should be wrapped in strong tags</strong></p>')

    def test_one(self):
        '''
        Lines surrounded by # should be wrapped in 'h1' tags
        '''
        self.assertEqual( 
                run_markdown('#this is h1#'),
                '<h1>this is h1</h1>')

    def test_two(self):
        '''
        Lines surrounded by # should be wrapped in 'h2' tags
        '''
        self.assertEqual( 
                run_markdown('##this is h2##'),
                '<h2>this is h2</h2>')
        
    def test_three(self):
        '''
        Lines surrounded by # should be wrapped in 'h3' tags
        '''
        self.assertEqual( 
                run_markdown('###this is h3###'),
                '<h3>this is h3</h3>')

    def test_four(self):
        '''
        Lines begin with > should be wrapped in 'blockquote' tags
        '''
        self.assertEqual( 
                run_markdown('>this is blockquote'),
                '<blockquote>this is blockquote</blockquote>')

if __name__ == '__main__':
    unittest.main()

