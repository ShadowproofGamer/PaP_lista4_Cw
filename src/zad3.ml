type 'a bt = Empty | Node of 'a * 'a bt * 'a bt;;
let tt = Node(1,Node(2,Node(4,Empty,Empty),Empty),Node(3,Node(5,Empty,Node(6,Empty,Empty)),Empty));;

let breadthBT tree =
  let rec breadthBT_rec queue res =
    if queue=[] then res
    else match List.hd queue with
           Empty -> breadthBT_rec (List.tl queue) res
          |Node(value, left, right) -> breadthBT_rec ((List.tl queue) @ [left;right]) (value::res)
  in List.rev (breadthBT_rec [tree] []);;

breadthBT tt;;
