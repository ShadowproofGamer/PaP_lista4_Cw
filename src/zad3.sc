sealed trait BT[+A]
case object Empty extends BT[Nothing]
case class Node[+A](elem: A, left: BT[A], right: BT[A]) extends BT[A]

val tt = Node(1,Node(2,Node(4,Empty,Empty),Empty),Node(3,Node(5,Empty,Node(6,Empty,Empty)),Empty));

def breadthBT[A](tree:BT[A]):List[A] ={
  def breadthBT_rec(queue:List[BT[A]], res:List[A]):List[A] ={
    if queue.isEmpty then res
    else (queue.head) match
      case Empty => breadthBT_rec(queue.tail, res)
      case Node(elem, left, right) => breadthBT_rec(queue.tail++List(left, right), elem::res)
  }
  breadthBT_rec(List(tree), List()).reverse
}

breadthBT(tt)