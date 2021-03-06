(set-logic HORN)
(declare-datatypes ((Tree 1)) ((par (k!00)((leaf) (node (left (Tree k!00)) (value k!00) (right (Tree k!00)))))))
(declare-fun sum ((Tree Int) Int) Bool)
(define-funs-rec ( ( sum ((x!1 (Tree Int))) Int))
                 ( (ite (= x!1 leaf)
                        0
                        (+ (value x!1)
                           ((_ sum 0) (left x!1))
                           ((_ sum 0) (right x!1))))))
(assert (forall ((dummy Int)) (=> true (sum leaf 0))))
(assert (forall ((m Int) (n Int) (x Int) (txl (Tree Int)) (txr (Tree Int)))
  (=> (and (sum txl m) (sum txr n)) (sum (node txl x txr) (+ m x n)))))
(assert (forall ((tx (Tree Int)) (n Int) (m Int))
  (=> (and (= ((_ sum 0) tx) m) (= ((_ sum 0) tx) n) (sum tx m) (sum tx n))
      (= m n))))
(check-sat)