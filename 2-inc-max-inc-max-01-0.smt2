(set-logic HORN)
(declare-datatypes ((~Mut<Int> 0)) (((~mut<Int> (~cur<Int> Int) (~ret<Int> Int)))))
(declare-datatypes ((~Tup<~Mut<Int>-~Mut<Int>> 0)) (((~tup<~Mut<Int>-~Mut<Int>> (~at0/<~Mut<Int>-~Mut<Int>> ~Mut<Int>) (~at1/<~Mut<Int>-~Mut<Int>> ~Mut<Int>)))))
(declare-fun %main (Bool) Bool)
(declare-fun %main.4 (Bool Bool) Bool)
(declare-fun %max_mid
             (~Mut<Int> ~Mut<Int> ~Mut<Int> ~Tup<~Mut<Int>-~Mut<Int>>)
             Bool)
(declare-fun %max_mid.0
             (~Mut<Int> ~Mut<Int> ~Mut<Int> Bool ~Tup<~Mut<Int>-~Mut<Int>>)
             Bool)
(declare-fun %max_mid.3
             (~Mut<Int> ~Mut<Int> ~Mut<Int> Bool ~Tup<~Mut<Int>-~Mut<Int>>)
             Bool)
(declare-fun %max_mid.6
             (~Mut<Int> ~Mut<Int> ~Mut<Int> Bool ~Tup<~Mut<Int>-~Mut<Int>>)
             Bool)
(assert (forall ((_! Bool)
         (_@.3 ~Tup<~Mut<Int>-~Mut<Int>>)
         (_?.0 Int)
         (_?.1 Int)
         (_?.2 Int)
         (_*.3_3 Int)
         (_*.3_4 Int)
         (_*.3_7 Int)
         (_*.3_8 Int)
         (_*.3_11 Int)
         (_*.3_12 Int))
  (let ((a!1 (= (~ret<Int> (~at0/<~Mut<Int>-~Mut<Int>> _@.3))
                (+ (~cur<Int> (~at0/<~Mut<Int>-~Mut<Int>> _@.3)) 2)))
        (a!2 (= (~ret<Int> (~at1/<~Mut<Int>-~Mut<Int>> _@.3))
                (+ (~cur<Int> (~at1/<~Mut<Int>-~Mut<Int>> _@.3)) 1)))
        (a!3 (%main.4 (not (not (= _*.3_3 _*.3_7))) _!)))
    (=> (and (%max_mid (~mut<Int> _?.0 _*.3_4)
                       (~mut<Int> _?.1 _*.3_8)
                       (~mut<Int> _?.2 _*.3_12)
                       _@.3)
             (= _*.3_11 _*.3_12)
             (= _*.3_7 _*.3_8)
             (= _*.3_3 _*.3_4)
             a!1
             a!2
             a!3)
        (%main _!)))))
(assert (forall ((_! Bool)) (=> (and (= _! false)) (%main.4 false _!))))
(assert (forall ((_! Bool)) (=> (and (= _! true)) (%main.4 true _!))))
(assert (forall ((_1 ~Mut<Int>)
         (_2 ~Mut<Int>)
         (_3 ~Mut<Int>)
         (_@ ~Tup<~Mut<Int>-~Mut<Int>>))
  (let ((a!1 (and (%max_mid.0 _1 _2 _3 (> (~cur<Int> _1) (~cur<Int> _2)) _@))))
    (=> a!1 (%max_mid _1 _2 _3 _@)))))
(assert (forall ((_1 ~Mut<Int>)
         (_2 ~Mut<Int>)
         (_3 ~Mut<Int>)
         (_@ ~Tup<~Mut<Int>-~Mut<Int>>))
  (let ((a!1 (and (%max_mid.3 _1 _2 _3 (> (~cur<Int> _2) (~cur<Int> _3)) _@))))
    (=> a!1 (%max_mid.0 _1 _2 _3 false _@)))))
(assert (forall ((_1 ~Mut<Int>)
         (_2 ~Mut<Int>)
         (_3 ~Mut<Int>)
         (_@ ~Tup<~Mut<Int>-~Mut<Int>>)
         (_*.1_3 ~Mut<Int>)
         (_*.1_4 ~Mut<Int>)
         (_*.1_7 ~Mut<Int>)
         (_*.1_8 ~Mut<Int>))
  (let ((a!1 (and (= _*.1_8 _1)
                  (= _*.1_4 _2)
                  (= _*.1_7 _*.1_8)
                  (= _*.1_3 _*.1_4)
                  (%max_mid.3 _*.1_3
                              _*.1_7
                              _3
                              (> (~cur<Int> _*.1_7) (~cur<Int> _3))
                              _@))))
    (=> a!1 (%max_mid.0 _1 _2 _3 true _@)))))
(assert (forall ((_1 ~Mut<Int>)
         (_2 ~Mut<Int>)
         (_3 ~Mut<Int>)
         (_@ ~Tup<~Mut<Int>-~Mut<Int>>))
  (let ((a!1 (and (%max_mid.6 _1 _2 _3 (> (~cur<Int> _1) (~cur<Int> _2)) _@))))
    (=> a!1 (%max_mid.3 _1 _2 _3 false _@)))))
(assert (forall ((_1 ~Mut<Int>)
         (_2 ~Mut<Int>)
         (_3 ~Mut<Int>)
         (_@ ~Tup<~Mut<Int>-~Mut<Int>>)
         (_*.4_3 ~Mut<Int>)
         (_*.4_4 ~Mut<Int>)
         (_*.4_7 ~Mut<Int>)
         (_*.4_8 ~Mut<Int>))
  (let ((a!1 (and (= _*.4_8 _2)
                  (= _*.4_4 _3)
                  (= _*.4_7 _*.4_8)
                  (= _*.4_3 _*.4_4)
                  (%max_mid.6 _1
                              _*.4_3
                              _*.4_7
                              (> (~cur<Int> _1) (~cur<Int> _*.4_3))
                              _@))))
    (=> a!1 (%max_mid.3 _1 _2 _3 true _@)))))
(assert (forall ((_1 ~Mut<Int>)
         (_2 ~Mut<Int>)
         (_3 ~Mut<Int>)
         (_@ ~Tup<~Mut<Int>-~Mut<Int>>)
         (_*.9_2 Int)
         (_*.9_4 Int))
  (let ((a!1 (= _@
                (~tup<~Mut<Int>-~Mut<Int>>
                  (~mut<Int> (~cur<Int> _3) _*.9_2)
                  (~mut<Int> (~cur<Int> _2) _*.9_4)))))
    (=> (and (= (~ret<Int> _3) _*.9_2)
             (= (~ret<Int> _1) (~cur<Int> _1))
             (= (~ret<Int> _2) _*.9_4)
             a!1)
        (%max_mid.6 _1 _2 _3 false _@)))))
(assert (forall ((_1 ~Mut<Int>)
         (_2 ~Mut<Int>)
         (_3 ~Mut<Int>)
         (_@ ~Tup<~Mut<Int>-~Mut<Int>>)
         (_*.7_3 ~Mut<Int>)
         (_*.7_4 ~Mut<Int>)
         (_*.7_7 ~Mut<Int>)
         (_*.7_8 ~Mut<Int>)
         (_*.9_2 Int)
         (_*.9_4 Int))
  (let ((a!1 (= _@
                (~tup<~Mut<Int>-~Mut<Int>>
                  (~mut<Int> (~cur<Int> _3) _*.9_2)
                  (~mut<Int> (~cur<Int> _*.7_7) _*.9_4)))))
    (=> (and (= _*.7_8 _1)
             (= _*.7_4 _2)
             (= _*.7_7 _*.7_8)
             (= _*.7_3 _*.7_4)
             (= (~ret<Int> _3) _*.9_2)
             (= (~ret<Int> _*.7_7) _*.9_4)
             (= (~ret<Int> _*.7_3) (~cur<Int> _*.7_3))
             a!1)
        (%max_mid.6 _1 _2 _3 true _@)))))
(assert (forall ((_% Int)) (=> (%main true) false)))
(check-sat)