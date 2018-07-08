import compare

doAssert(compare(2, 2) == Compare.Equals)
doAssert(compare(1, 2) == Compare.Lower)
doAssert(compare(2, 1) == Compare.Greater)

doAssert(compare("Hello", "Hello") == Compare.Equals)
doAssert(compare("Olé", "Hola") == Compare.Greater)
doAssert(compare("Ella", "Hello") == Compare.Lower)

type
    Person = ref object of RootObj
        name*: string
        age: int

proc `>`*(p, o: Person) : bool =
    result = p.age > o.age

proc `<`*(p, o: Person) : bool =
    result = p.age < o.age

let jane = Person(name: "Jane", age: 24)
let john = Person(name: "John", age: 22)

doAssert(compare(jane, john) == Compare.Greater)
