(set-logic HORN)
(declare-datatypes ((List 1)) ((par (k!00)((nil) (insert (head k!00) (tail (List k!00)))))))
(declare-fun some-rest-abs
             ((List Int)
              (List Int)
              Int
              Int
              (List Int)
              (List Int)
              Int
              Int
              Int
              Int)
             Bool)
(declare-fun sum ((List Int) Int) Bool)
(define-funs-rec ( ( sum ((x!1 (List Int))) Int))
                 ( (ite (= x!1 nil) 0 (+ (head x!1) ((_ sum 0) (tail x!1))))))
(assert (forall ((xs! (List Int))
         (xs (List Int))
         (x! Int)
         (x Int)
         (c!0 Int)
         (c!1 Int)
         (c!2 Int)
         (c!3 Int))
  (let ((a!1 (and (= ((_ sum 0) (insert x xs)) c!0)
                  (sum (insert x xs) c!0)
                  (= ((_ sum 0) (insert x! xs!)) c!1)
                  (sum (insert x! xs!) c!1)
                  (= ((_ sum 0) xs) c!2)
                  (sum xs c!2)
                  (= ((_ sum 0) xs!) c!3)
                  (sum xs! c!3)
                  true)))
    (=> a!1
        (some-rest-abs (insert x xs)
                       (insert x! xs!)
                       x
                       x!
                       xs
                       xs!
                       c!0
                       c!1
                       c!2
                       c!3)))))
(assert (forall ((zs! (List Int))
         (zs (List Int))
         (y! Int)
         (y Int)
         (xs! (List Int))
         (xs (List Int))
         (x! Int)
         (x Int)
         (c!4 Int)
         (c!5 Int)
         (c!6 Int)
         (c!7 Int)
         (c!8 Int)
         (c!9 Int)
         (c!10 Int)
         (c!11 Int))
  (let ((a!1 (and (= ((_ sum 0) (insert x xs)) c!4)
                  (sum (insert x xs) c!4)
                  (= ((_ sum 0) (insert x xs!)) c!5)
                  (sum (insert x xs!) c!5)
                  (= ((_ sum 0) zs) c!6)
                  (sum zs c!6)
                  (= ((_ sum 0) zs!) c!7)
                  (sum zs! c!7)
                  (= ((_ sum 0) xs) c!8)
                  (sum xs c!8)
                  (= ((_ sum 0) xs!) c!9)
                  (sum xs! c!9)
                  (= ((_ sum 0) zs) c!10)
                  (sum zs c!10)
                  (= ((_ sum 0) zs!) c!11)
                  (sum zs! c!11)
                  (some-rest-abs xs xs! y y! zs zs! c!8 c!9 c!10 c!11))))
    (=> a!1
        (some-rest-abs (insert x xs) (insert x xs!) y y! zs zs! c!4 c!5 c!6 c!7)))))
(assert (forall ((dummy Int)) (=> true (sum nil 0))))
(assert (forall ((n Int) (x Int) (xs (List Int)))
  (=> (sum xs n) (sum (insert x xs) (+ x n)))))
(assert (forall ((n Int)
         (k Int)
         (k2 Int)
         (r Int)
         (xs (List Int))
         (xs! (List Int))
         (y Int)
         (y! Int)
         (zs (List Int))
         (zs! (List Int))
         (w Int)
         (w! Int)
         (vs (List Int))
         (c!12 Int)
         (c!13 Int)
         (c!14 Int)
         (c!15 Int)
         (c!16 Int)
         (c!17 Int)
         (c!18 Int)
         (c!19 Int))
  (=> (and (= ((_ sum 0) xs) c!12)
           (sum xs c!12)
           (= ((_ sum 0) xs!) c!13)
           (sum xs! c!13)
           (= ((_ sum 0) zs) c!14)
           (sum zs c!14)
           (= ((_ sum 0) zs!) c!15)
           (sum zs! c!15)
           (= ((_ sum 0) zs) c!16)
           (sum zs c!16)
           (= ((_ sum 0) zs!) c!17)
           (sum zs! c!17)
           (= ((_ sum 0) vs) c!18)
           (sum vs c!18)
           (= ((_ sum 0) vs) c!19)
           (sum vs c!19)
           (sum xs n)
           (some-rest-abs xs xs! y y! zs zs! c!12 c!13 c!14 c!15)
           (some-rest-abs zs zs! w w! vs vs c!16 c!17 c!18 c!19)
           (sum xs! r)
           (= ((_ sum 0) xs) n)
           (= ((_ sum 0) xs!) r)
           (= y! (+ y k))
           (= w! (+ w k2)))
      (= r (+ n k k2)))))
(check-sat)