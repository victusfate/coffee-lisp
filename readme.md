![coffee-lisp](https://github.com/victusfate/coffee-lisp/raw/master/CoffeeLisp-logo.png)


CoffeeLisp is a tiny (non-existant yet) language that compiles into Common Lisp. Consider the versatility and power of Common Lisp, gracefully blended with the syntactic sugar of CoffeeScript, and you have an inkling of this project's essence and direction. I must admit that after starting to write this readme I found the [fact.lisp](https://github.com/victusfate/coffee-lisp/raw/master/samples/fact.lisp) source a little easier to reason about than the [fact.coffee](https://github.com/victusfate/coffee-lisp/raw/master/samples/fact.coffee) code. I'll have to work on tidying up the CoffeeScript Fixed Point Combinator.

This is a work in progress, there's not yet a coffeescript to SBCL compiler! I'm blissfully deluding myself into believing that the process of writing the compiler will be joyful.

coffeelisp will resemble coffeescript syntactically while supporting s-expressions, macros, rapid compilation and common lisps rich standard libraries

- - -

<h2>CoffeeLisp Shall</h2> 

 - celebrate the beautiful parts of both coffeescript and Lisp
 - approach the execution speed of compiled languages like C
 - incorporate all the incredible features of Common Lisp 
 - seek a minimal footprint to support the above
 
- - -
<h2>examples</h2>
[Sample Fixed Point Combinator in CoffeeScript](https://gist.github.com/3001897)
note the spaces after f and before (x), <i>f (x)</i>
    y = (f) -> ((g) -> f (x) -> g(g)(x))((g) -> f (x) -> g(g)(x))
and
    fac = (factorial) ->
      (x) ->
        if x is 1 then return 1
        x * factorial(x - 1)

to yield the factorial
    y(fac)(5) is equal to 120

[Common Lisp version<](http://rosettacode.org/wiki/Y_combinator#Common_Lisp)
    (defun Y (f) 
      ((lambda (x) (funcall x x)) 
       (lambda (y) 
         (funcall f (lambda (&rest args) 
              (apply (funcall y y) args))))))
     
    (defun fac (f) 
      (lambda (n) 
        (if (zerop n) 
        1 
        (* n (funcall f (1- n))))))

to yield the factorial 
    (funcall (Y #'fac) 5) is equal to 120


- - -

coffee lisp depends on:
 - [coffeescript](https://github.com/jashkenas/coffee-script/)
 - [steel bank common lisp](http://www.sbcl.org/) [github mirror](https://github.com/sbcl/sbcl)
 


- - -
<h2>CoffeeLisp License:</h2> 
Released under the [MIT License](http://en.wikipedia.org/wiki/MIT_License)

- - -
<h2>CoffeeScript License</h2>
MIT License

- - -
<h2>SBCL License information</h2>

> SBCL is derived from CMU CL, and carries the same licensing terms, a mixture of BSD-style (for a few subsystems) and public domain (for the rest of the system).

> Some of the files in CMU CL have a BSD-style license requiring that credit be given to the institutions which owned the copyright to the original versions: Xerox, Inc., the Massachusetts Institute of Technology, Symbolics, Inc., and Gerd Moellmann. For these files, SBCL necessarily uses the same BSD-style license as CMU CL did.

> The rest of the files in SBCL (as in CMU CL) are in the public domain. The boilerplate at the beginning of SBCL source files looks like this:

> ;;;; This software is part of the SBCL system. See the README file for
> ;;;; more information.
> ;;;;
> ;;;; This software is derived from the CMU CL system, which was
> ;;;; written at Carnegie Mellon University and released into the
> ;;;; public domain. The software is in the public domain and is
> ;;;; provided with absolutely no warranty. See the COPYING and CREDITS
> ;;;; files for more information.
> The COPYING file discusses further the particular licenses of parts of SBCL, whereas CREDITS details individual contributions.

> Steel Bank Common Lisp (SBCL) is free software, and comes with
absolutely no warranty.

> SBCL is derived from CMU CL, which was released into the public
domain, subject only to the BSD-style "free, but credit must be given
and copyright notices must be retained" licenses in the LOOP macro
(from MIT and Symbolics) and in the PCL implementation of CLOS (from
Xerox).

> After CMU CL was released into the public domain, it was maintained by
volunteers, who continued the tradition of releasing their work into
the public domain.

> All changes to SBCL since the fork from CMU CL have been released into
the public domain in jurisdictions where this is possible, or under
the FreeBSD licence where not.

> Thus, there are no known obstacles to copying, using, and modifying
SBCL freely, as long as copyright notices of MIT, Symbolics, Xerox and
Gerd Moellmann are retained.
