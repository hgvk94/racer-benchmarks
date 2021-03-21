(set-logic HORN)
(declare-datatypes ((Tree 1)) ((par (k!00)((leaf) (node (left (Tree k!00)) (value k!00) (right (Tree k!00)))))))
(declare-datatypes ((Mut 1)) ((par (k!00)((mut (cur k!00) (ret k!00))))))
(declare-fun inc-abs ((Mut (Tree Int)) Int Int) Bool)
(declare-fun sum ((Tree Int) Int) Bool)
(declare-fun size-abs ((Tree Int) Int Int) Bool)
(define-funs-rec ( ( sum ((x!1 (Tree Int))) Int))
                 ( (ite (= x!1 leaf)
                        0
                        (+ (value x!1)
                           ((_ sum 0) (left x!1))
                           ((_ sum 0) (right x!1))))))
(assert (forall ((dummy Int) (c!0 Int) (c!1 Int))
  (=> (and (= ((_ sum 0) leaf) c!0)
           (sum leaf c!0)
           (= ((_ sum 0) leaf) c!1)
           (sum leaf c!1)
           true)
      (inc-abs (mut leaf leaf) c!0 c!1))))
(assert (forall ((txr! (Tree Int))
         (txr (Tree Int))
         (x Int)
         (txl! (Tree Int))
         (txl (Tree Int))
         (c!2 Int)
         (c!3 Int)
         (c!4 Int)
         (c!5 Int)
         (c!6 Int)
         (c!7 Int))
  (let ((a!1 (= ((_ sum 0) (node txl! (+ 1 x) txr!)) c!3))
        (a!3 (inc-abs (mut (node txl x txr) (node txl! (+ x 1) txr!)) c!2 c!3)))
  (let ((a!2 (and (= ((_ sum 0) (node txl x txr)) c!2)
                  (sum (node txl x txr) c!2)
                  a!1
                  (sum (node txl! (+ 1 x) txr!) c!3)
                  (= ((_ sum 0) txl) c!4)
                  (sum txl c!4)
                  (= ((_ sum 0) txl!) c!5)
                  (sum txl! c!5)
                  (= ((_ sum 0) txr) c!6)
                  (sum txr c!6)
                  (= ((_ sum 0) txr!) c!7)
                  (sum txr! c!7)
                  (inc-abs (mut txl txl!) c!4 c!5)
                  (inc-abs (mut txr txr!) c!6 c!7))))
    (=> a!2 a!3)))))
(assert (forall ((dummy Int) (c!8 Int))
  (=> (and (= ((_ sum 0) leaf) c!8) (sum leaf c!8) true) (size-abs leaf 0 c!8))))
(assert (forall ((txr (Tree Int))
         (txl (Tree Int))
         (x Int)
         (n Int)
         (m Int)
         (c!9 Int)
         (c!10 Int)
         (c!11 Int))
  (let ((a!1 (and (= ((_ sum 0) (node txl x txr)) c!9)
                  (sum (node txl x txr) c!9)
                  (= ((_ sum 0) txl) c!10)
                  (sum txl c!10)
                  (= ((_ sum 0) txr) c!11)
                  (sum txr c!11)
                  (size-abs txl m c!10)
                  (size-abs txr n c!11))))
    (=> a!1 (size-abs (node txl x txr) (+ m 1 n) c!9)))))
(assert (forall ((dummy Int)) (=> true (sum leaf 0))))
(assert (forall ((m Int) (n Int) (x Int) (txl (Tree Int)) (txr (Tree Int)))
  (=> (and (sum txl m) (sum txr n)) (sum (node txl x txr) (+ m x n)))))
(assert (forall ((n Int)
         (s Int)
         (r Int)
         (tx (Tree Int))
         (tx! (Tree Int))
         (y Int)
         (y! Int)
         (c!12 Int)
         (c!13 Int)
         (c!14 Int))
  (=> (and (= ((_ sum 0) tx) c!12)
           (sum tx c!12)
           (= ((_ sum 0) tx) c!13)
           (sum tx c!13)
           (= ((_ sum 0) tx!) c!14)
           (sum tx! c!14)
           (sum tx n)
           (size-abs tx s c!12)
           (inc-abs (mut tx tx!) c!13 c!14)
           (sum tx! r)
           (= ((_ sum 0) tx) n)
           (= ((_ sum 0) tx!) r))
      (= r (+ n s)))))
(check-sat)