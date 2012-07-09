y = (f) -> ((g) -> f (x) ->  g(g)(x))((g) -> f (x) -> g(g)(x))

fac = (factorial) ->
    (x) ->
        if x is 1 then return 1
        x * factorial(x - 1)

console.log y(fac)(5)
