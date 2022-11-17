let f1 x y z = x y z;;
    y: 'a
    z: 'b
    x: 'a->'b->'c
    f1: ('a -> 'b -> 'c) -> 'a -> 'b -> 'c

let f2 x y = fun z -> x::y;;
    x: 'a
    y: 'a list
    z: 'b
    f2: 'a->'a list -> 'b -> 'a list

