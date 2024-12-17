# Subtle Memory Leak in Objective-C NSString Management

This repository demonstrates a common, yet subtle, memory management issue in Objective-C related to NSString and its interaction with custom classes.  The problem lies in the improper release of a retained NSString property, potentially leading to a memory leak.  The leak is subtle because it might not trigger immediate crashes; instead, it will cause gradual memory growth, eventually leading to application instability.

## Problem

The core problem is demonstrated in the `bug.m` file.  The `MyClass` class has a retained `NSString` property. While the `dealloc` method releases the string, there's a missing step in the overall management flow that results in a memory leak.

## Solution

The corrected code (in `bugSolution.m`) addresses the memory leak. The solution involves ensuring the correct retain/release cycle by handling the object's ownership correctly.