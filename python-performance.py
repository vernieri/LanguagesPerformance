#
# Pascal-Performance 
# Version 1.0.0
# By: Vernieri
# 16 August 2018
# GitHub: github.com/vernieri
#
import time
import random

a = [None] * 99999

def main():
	t0 = time.time()
	generator()
	calc()
	#print 'hello'
	t1 = time.time()
	total = t1-t0
	print 'Tempo em segundos: %f' %total

def generator():
	i = 0
	print 'Lets generate some numbers \n'
	while i<99999:
		a[i] = random.randint(1,99999)
		i += 1

	i = 0	
	while i<99999:
		print 'A random Number: %d' %a[i]
		i += 1


def calc():
	#i,e,n,p,prime
	prime = 0
	i = 0

	while i<99999:
		p = 2
		n = a[i]
		e = 0

		while p<n:
			if((n % p) != 0):
				e+=1

			p+=1

		if((e+2) == n):
			#print 'Entrei'
			prime+=1

		i+=1
	print 'Here the prime numbers found: %d \n' %prime

main()

#python python-performance.py
