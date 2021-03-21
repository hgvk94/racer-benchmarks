(set-logic HORN)
(declare-datatypes ((Tree 1)) ((par (k!00)((leaf) (node (left (Tree k!00)) (value k!00) (right (Tree k!00)))))))
(declare-fun size ((Tree Int) Int) Bool)
(assert (forall ((dummy Int)) (=> true (size leaf 0))))
(assert (forall ((m Int) (n Int) (x Int) (txl (Tree Int)) (txr (Tree Int)))
  (=> (and (size txl m) (size txr n)) (size (node txl x txr) (+ m 1 n)))))
(assert (forall ((m Int) (n Int) (tx (Tree Int)))
  (=> (and (size tx m) (size tx n)) (= m n))))
(check-sat)