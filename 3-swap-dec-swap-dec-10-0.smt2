(set-logic HORN)
(declare-datatypes ((~Mut<Int> 0)) (((~mut<Int> (~cur<Int> Int) (~ret<Int> Int)))))
(declare-datatypes ((~Mut<~Mut<Int>> 0)) (((~mut<~Mut<Int>> (~cur<~Mut<Int>> ~Mut<Int>) (~ret<~Mut<Int>> ~Mut<Int>)))))
(declare-fun %main (Bool) Bool)
(declare-fun %main.4 (Int Int Int Int ~Mut<Int> ~Mut<Int> Bool Bool) Bool)
(declare-fun %swap_dec_bound (Int ~Mut<~Mut<Int>> ~Mut<~Mut<Int>>) Bool)
(declare-fun %main.8 (Bool Bool) Bool)
(declare-fun %main.7 (Int Int Int Int ~Mut<Int> ~Mut<Int> Bool Bool Bool) Bool)
(declare-fun %may_swap<~Mut<Int>> (~Mut<~Mut<Int>> ~Mut<~Mut<Int>>) Bool)
(declare-fun %may_swap<~Mut<Int>>.1 (~Mut<~Mut<Int>> ~Mut<~Mut<Int>> Bool) Bool)
(declare-fun %swap_dec_bound.1 (Int ~Mut<~Mut<Int>> ~Mut<~Mut<Int>> Bool) Bool)
(assert (forall ((_! Bool)
         (_?.0 Int)
         (_?.1 Int)
         (_?.2 Int)
         (_*.3_3 Int)
         (_*.3_5 Int)
         (_*.3_11 ~Mut<Int>)
         (_*.3_12 ~Mut<Int>)
         (_*.3_15 ~Mut<Int>)
         (_*.3_16 ~Mut<Int>))
  (let ((a!1 (and (%swap_dec_bound _?.0
                                   (~mut<~Mut<Int>> (~mut<Int> _?.1 _*.3_3)
                                                    _*.3_12)
                                   (~mut<~Mut<Int>> (~mut<Int> _?.2 _*.3_5)
                                                    _*.3_16))
                  (= _*.3_15 _*.3_16)
                  (= _*.3_11 _*.3_12)
                  (%main.4 _?.0
                           _*.3_3
                           _*.3_5
                           _?.1
                           _*.3_11
                           _*.3_15
                           (>= _?.1 _*.3_3)
                           _!))))
    (=> a!1 (%main _!)))))
(assert (forall ((_1 Int)
         (_2 Int)
         (_3 Int)
         (_4 Int)
         (_5 ~Mut<Int>)
         (_6 ~Mut<Int>)
         (_! Bool))
  (=> (and (= (~ret<Int> _5) (~cur<Int> _5))
           (= (~ret<Int> _6) (~cur<Int> _6))
           (%main.8 (not false) _!))
      (%main.4 _1 _2 _3 _4 _5 _6 false _!))))
(assert (forall ((_1 Int)
         (_2 Int)
         (_3 Int)
         (_4 Int)
         (_5 ~Mut<Int>)
         (_6 ~Mut<Int>)
         (_! Bool))
  (let ((a!1 (and (%main.7 _1 _2 _3 _4 _5 _6 true (<= (- _4 _2) (* 2 _1)) _!))))
    (=> a!1 (%main.4 _1 _2 _3 _4 _5 _6 true _!)))))
(assert (forall ((_1 Int)
         (_2 Int)
         (_3 Int)
         (_4 Int)
         (_5 ~Mut<Int>)
         (_6 ~Mut<Int>)
         (_15 Bool)
         (_! Bool))
  (=> (and (= (~ret<Int> _5) (~cur<Int> _5))
           (= (~ret<Int> _6) (~cur<Int> _6))
           (%main.8 (not false) _!))
      (%main.7 _1 _2 _3 _4 _5 _6 _15 false _!))))
(assert (forall ((_1 Int)
         (_2 Int)
         (_3 Int)
         (_4 Int)
         (_5 ~Mut<Int>)
         (_6 ~Mut<Int>)
         (_15 Bool)
         (_! Bool))
  (=> (and (= (~ret<Int> _5) (~cur<Int> _5))
           (= (~ret<Int> _6) (~cur<Int> _6))
           (%main.8 (not true) _!))
      (%main.7 _1 _2 _3 _4 _5 _6 _15 true _!))))
(assert (forall ((_! Bool)) (=> (and (= _! false)) (%main.8 false _!))))
(assert (forall ((_! Bool)) (=> (and (= _! true)) (%main.8 true _!))))
(assert (forall ((_1 ~Mut<~Mut<Int>>) (_2 ~Mut<~Mut<Int>>) (_?.0 Bool))
  (=> (and (%may_swap<~Mut<Int>>.1 _1 _2 _?.0)) (%may_swap<~Mut<Int>> _1 _2))))
(assert (forall ((_1 ~Mut<~Mut<Int>>) (_2 ~Mut<~Mut<Int>>))
  (=> (and (= (~ret<~Mut<Int>> _1) (~cur<~Mut<Int>> _1))
           (= (~ret<~Mut<Int>> _2) (~cur<~Mut<Int>> _2))
           true)
      (%may_swap<~Mut<Int>>.1 _1 _2 false))))
(assert (forall ((_1 ~Mut<~Mut<Int>>)
         (_2 ~Mut<~Mut<Int>>)
         (_*.2_2 ~Mut<Int>)
         (_*.2_4 ~Mut<Int>))
  (=> (and (= _*.2_4 (~cur<~Mut<Int>> _1))
           (= _*.2_2 (~cur<~Mut<Int>> _2))
           (= (~ret<~Mut<Int>> _2) _*.2_4)
           (= (~ret<~Mut<Int>> _1) _*.2_2)
           true)
      (%may_swap<~Mut<Int>>.1 _1 _2 true))))
(assert (forall ((_1 Int)
         (_2 ~Mut<~Mut<Int>>)
         (_3 ~Mut<~Mut<Int>>)
         (_*.0_2 ~Mut<Int>)
         (_*.0_4 ~Mut<Int>))
  (let ((a!1 (and (%may_swap<~Mut<Int>>
                    (~mut<~Mut<Int>> (~cur<~Mut<Int>> _2) _*.0_2)
                    (~mut<~Mut<Int>> (~cur<~Mut<Int>> _3) _*.0_4))
                  (%swap_dec_bound.1
                    _1
                    (~mut<~Mut<Int>> _*.0_2 (~ret<~Mut<Int>> _2))
                    (~mut<~Mut<Int>> _*.0_4 (~ret<~Mut<Int>> _3))
                    (= _1 0)))))
    (=> a!1 (%swap_dec_bound _1 _2 _3)))))
(assert (forall ((_1 Int)
         (_2 ~Mut<~Mut<Int>>)
         (_3 ~Mut<~Mut<Int>>)
         (_*.2_10 ~Mut<Int>)
         (_*.2_12 ~Mut<Int>))
  (let ((a!1 (~mut<Int> (- (~cur<Int> (~cur<~Mut<Int>> _2)) 1)
                        (~ret<Int> (~cur<~Mut<Int>> _2))))
        (a!2 (~mut<Int> (- (~cur<Int> (~cur<~Mut<Int>> _3)) 2)
                        (~ret<Int> (~cur<~Mut<Int>> _3)))))
    (=> (and (%swap_dec_bound (- _1 1)
                              (~mut<~Mut<Int>> a!1 _*.2_10)
                              (~mut<~Mut<Int>> a!2 _*.2_12))
             (= (~ret<~Mut<Int>> _2) _*.2_10)
             (= (~ret<~Mut<Int>> _3) _*.2_12)
             true)
        (%swap_dec_bound.1 _1 _2 _3 false)))))
(assert (forall ((_1 Int) (_2 ~Mut<~Mut<Int>>) (_3 ~Mut<~Mut<Int>>))
  (=> (and (= (~ret<~Mut<Int>> _2) (~cur<~Mut<Int>> _2))
           (= (~ret<~Mut<Int>> _3) (~cur<~Mut<Int>> _3))
           true)
      (%swap_dec_bound.1 _1 _2 _3 true))))
(assert (forall ((_% Int)) (=> (%main true) false)))
(check-sat)