(set-logic HORN)
(declare-fun %main (Bool) Bool)
(declare-fun %main.2 (Int Int Bool Bool) Bool)
(declare-fun %main.3 (Int Int Bool Bool) Bool)
(declare-fun %main.10 (Int Int Bool Bool) Bool)
(declare-fun %main.9 (Int Int Bool Bool Bool) Bool)
(declare-fun %main.13 (Int Int Int Int Bool Bool) Bool)
(declare-fun %main.14 (Bool Bool) Bool)
(assert (forall ((_! Bool) (_?.0 Int) (_?.1 Int))
  (let ((a!1 (and (%main.2 _?.0 _?.1 (not (<= _?.0 1000000)) _!))))
    (=> a!1 (%main _!)))))
(assert (forall ((_1 Int) (_2 Int) (_! Bool))
  (=> (and (%main.3 _1 _2 (<= 0 _2) _!)) (%main.2 _1 _2 false _!))))
(assert (forall ((_1 Int) (_2 Int) (_! Bool))
  (=> (and (= _! false)) (%main.2 _1 _2 true _!))))
(assert (forall ((_1 Int) (_2 Int) (_! Bool))
  (=> (and (%main.10 _1 _2 (not false) _!)) (%main.3 _1 _2 false _!))))
(assert (forall ((_1 Int) (_2 Int) (_! Bool))
  (=> (and (%main.9 _1 _2 true (<= _2 1000000) _!)) (%main.3 _1 _2 true _!))))
(assert (forall ((_1 Int) (_2 Int) (_10 Bool) (_! Bool))
  (=> (and (%main.10 _1 _2 (not false) _!)) (%main.9 _1 _2 _10 false _!))))
(assert (forall ((_1 Int) (_2 Int) (_10 Bool) (_! Bool))
  (=> (and (%main.10 _1 _2 (not true) _!)) (%main.9 _1 _2 _10 true _!))))
(assert (forall ((_1 Int) (_2 Int) (_! Bool))
  (=> (and (%main.13 _1 _2 _1 _2 (> _2 0) _!)) (%main.10 _1 _2 false _!))))
(assert (forall ((_1 Int) (_2 Int) (_! Bool))
  (=> (and (= _! false)) (%main.10 _1 _2 true _!))))
(assert (forall ((_1 Int) (_2 Int) (_3 Int) (_4 Int) (_! Bool))
  (let ((a!1 (%main.14 (not (= _3 (+ _1 _2))) _!)))
    (=> (and a!1) (%main.13 _1 _2 _3 _4 false _!)))))
(assert (forall ((_1 Int) (_2 Int) (_3 Int) (_4 Int) (_! Bool))
  (let ((a!1 (and (%main.13 _1 _2 (+ _3 1) (- _4 1) (> (- _4 1) 0) _!))))
    (=> a!1 (%main.13 _1 _2 _3 _4 true _!)))))
(assert (forall ((_! Bool)) (=> (and (= _! false)) (%main.14 false _!))))
(assert (forall ((_! Bool)) (=> (and (= _! true)) (%main.14 true _!))))
(assert (forall ((_% Int)) (=> (%main true) false)))
(check-sat)