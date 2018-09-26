# Technical test in ruby

## Install

```
bundle install
```

## Run

```
bundle exec rspec spec/lib/
```

## Instructions

There are 5 tests to complete, ranged by difficulty order.

* You have *one hour* to complete all these exercices ;
* For each there's a RSpec file, which test each edge cases ;
* Every exercices are located in `lib/technical_test`
* You should not use the web for finding solutions, only [Ruby doc](http://ruby-doc.org/core-2.2.0/).

## Problems

### Problem 1

Write three functions that compute the sum of the numbers in a given list using
a for-loop, a while-loop, and recursion.

### Problem 2

Write a function that combines two lists by alternatingly taking elements. For
example: given the two lists [a, b, c] and [1, 2, 3], the function should return
[a, 1, b, 2, c, 3].

### Problem 3

Write a function that computes the list of the first 100 Fibonacci numbers. By
definition, the first two numbers in the Fibonacci sequence are 0 and 1, and
each subsequent number is the sum of the previous two. As an example, here are
the first 10 Fibonnaci numbers: 0, 1, 1, 2, 3, 5, 8, 13, 21, and 34.

### Problem 4

Write a function that given a list of non negative integers, arranges them such
that they form the largest possible number. For example, given [50, 2, 1, 9],
the largest formed number is 95021.

### Problem 5

Write a program that outputs all possibilities to put + or - or nothing between
the numbers 1, 2, ..., 9 (in this order) such that the result is always 100. For
example: 1 + 2 + 34 – 5 + 67 – 8 + 9 = 100.

It returns an array with strings: `["1 + 2 + 34 – 5 + 67 – 8 + 9"]`

## Thanks

Inspired from
[Five programming problems every Software Engineer should be able to solve in less than 1 hour](https://www.shiftedup.com/2015/05/07/five-programming-problems-every-software-engineer-should-be-able-to-solve-in-less-than-1-hour)
