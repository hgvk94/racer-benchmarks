(set-logic HORN)
(declare-datatypes ((List 1)) ((par (k!00)((nil) (insert (head k!00) (tail (List k!00)))))))
(declare-datatypes ((Mut 1)) ((par (k!00)((mut (cur k!00) (ret k!00))))))
(declare-fun pushback-abs ((Mut (List Int)) Int Int Int) Bool)
(declare-fun length ((List Int) Int) Bool)
(define-funs-rec ( ( length ((x!1 (List Int))) Int))
                 ( (ite (= x!1 nil) 0 (+ 1 ((_ length 0) (tail x!1))))))
(assert (forall ((x Int) (c!0 Int) (c!1 Int))
  (let ((a!1 (and (= ((_ length 0) nil) c!0)
                  (length nil c!0)
                  (= ((_ length 0) (insert x nil)) c!1)
                  (length (insert x nil) c!1)
                  true)))
    (=> a!1 (pushback-abs (mut nil (insert x nil)) x c!0 c!1)))))
(assert (forall ((y Int)
         (xs! (List Int))
         (xs (List Int))
         (x Int)
         (c!2 Int)
         (c!3 Int)
         (c!4 Int)
         (c!5 Int))
  (let ((a!1 (and (= ((_ length 0) (insert x xs)) c!2)
                  (length (insert x xs) c!2)
                  (= ((_ length 0) (insert x xs!)) c!3)
                  (length (insert x xs!) c!3)
                  (= ((_ length 0) xs) c!4)
                  (length xs c!4)
                  (= ((_ length 0) xs!) c!5)
                  (length xs! c!5)
                  (pushback-abs (mut xs xs!) y c!4 c!5))))
    (=> a!1 (pushback-abs (mut (insert x xs) (insert x xs!)) y c!2 c!3)))))
(assert (forall ((dummy Int)) (=> true (length nil 0))))
(assert (forall ((n Int) (x Int) (xs (List Int)))
  (=> (length xs n) (length (insert x xs) (+ 1 n)))))
(assert (forall ((n Int)
         (r Int)
         (xs (List Int))
         (xs! (List Int))
         (y Int)
         (c!6 Int)
         (c!7 Int))
  (=> (and (= ((_ length 0) xs) c!6)
           (length xs c!6)
           (= ((_ length 0) xs!) c!7)
           (length xs! c!7)
           (length xs n)
           (pushback-abs (mut xs xs!) y c!6 c!7)
           (length xs! r)
           (= ((_ length 0) xs) n)
           (= ((_ length 0) xs!) r))
      (= r (+ n 1)))))
(check-sat)