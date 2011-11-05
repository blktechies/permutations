#!/usr/bin/env python


import sys
import itertools


def main(args):
    if len(args) >= 2:
        chars = args[1]
        perms = itertools.permutations(chars)
        for perm in perms:
            print ' '.join(perm)
    else:
        print "Please give me a string of characters to permutate..."


if __name__ == '__main__':
    main(sys.argv)
