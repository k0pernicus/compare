# compare
# Copyright k0pernicus
# Compare two different values, and get an enum as response

type Compare* {.pure.} = enum
    Lower = -1,
    Equals = 0,
    Greater = 1

proc compare*[T](x, y: T): Compare =
    if x < y:
        return Compare.Lower
    elif x > y:
        return Compare.Greater
    return Compare.Equals
