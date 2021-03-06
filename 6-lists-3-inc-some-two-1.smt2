(set-logic HORN)
(declare-datatypes ((%List 0)) (((%List-0 (%List-0.0 Int) (%List-0.1 %List)) (%List-1))))
(declare-datatypes ((~Mut<%List> 0)) (((~mut<%List> (~cur<%List> %List) (~ret<%List> %List)))))
(declare-datatypes ((~Mut<Int> 0)) (((~mut<Int> (~cur<Int> Int) (~ret<Int> Int)))))
(declare-datatypes ((~Tup<~Mut<Int>-~Mut<%List>> 0)) (((~tup<~Mut<Int>-~Mut<%List>> (~at0/<~Mut<Int>-~Mut<%List>> ~Mut<Int>) (~at1/<~Mut<Int>-~Mut<%List>> ~Mut<%List>)))))
(declare-fun %main (Bool) Bool)
(declare-fun %main.7-abs (%List Bool Bool Int) Bool)
(declare-fun %sum (%List Int) Bool)
(declare-fun %take_some_rest-abs
             (~Mut<%List> ~Tup<~Mut<Int>-~Mut<%List>> Int Int)
             Bool)
(declare-fun %sum.0 (%List Int) Bool)
(declare-fun %take_some_rest.0-abs
             (~Mut<%List> ~Tup<~Mut<Int>-~Mut<%List>> Int Int)
             Bool)
(declare-fun %take_some_rest.4-abs
             (~Mut<%List>
              ~Mut<Int>
              ~Mut<%List>
              Bool
              ~Tup<~Mut<Int>-~Mut<%List>>
              Int
              Int
              Int
              Int)
             Bool)
(define-funs-rec ( ( sum ((x!1 %List)) Int))
                 ( (ite (= x!1 %List-1)
                        0
                        (+ (%List-0.0 x!1) ((_ sum 0) (%List-0.1 x!1))))))
(assert (forall ((_! Bool)
         (_@.2 Int)
         (_@.3 ~Tup<~Mut<Int>-~Mut<%List>>)
         (_@.5 ~Tup<~Mut<Int>-~Mut<%List>>)
         (_@.6 Int)
         (_?.0 %List)
         (_*.3_5 %List)
         (_*.3_6 %List)
         (_*.5_9 %List)
         (c!0 Int)
         (c!1 Int)
         (c!2 Int)
         (c!3 Int)
         (c!4 Int))
  (let ((a!1 (= ((_ sum 0) (~cur<%List> (~at1/<~Mut<Int>-~Mut<%List>> _@.3)))
                c!2))
        (a!2 (%take_some_rest-abs
               (~mut<%List> (~cur<%List> (~at1/<~Mut<Int>-~Mut<%List>> _@.3))
                            _*.5_9)
               _@.5
               c!2
               c!3))
        (a!3 (%main.7-abs _*.3_5 (not (> _@.6 (+ _@.2 2))) _! c!4))
        (a!4 (= (~ret<Int> (~at0/<~Mut<Int>-~Mut<%List>> _@.3))
                (+ (~cur<Int> (~at0/<~Mut<Int>-~Mut<%List>> _@.3)) 1)))
        (a!5 (= (~ret<Int> (~at0/<~Mut<Int>-~Mut<%List>> _@.5))
                (+ (~cur<Int> (~at0/<~Mut<Int>-~Mut<%List>> _@.5)) 1))))
  (let ((a!6 (and (= ((_ sum 0) _?.0) c!0)
                  (%sum _?.0 c!0)
                  (= ((_ sum 0) _*.3_6) c!1)
                  (%sum _*.3_6 c!1)
                  a!1
                  (%sum (~cur<%List> (~at1/<~Mut<Int>-~Mut<%List>> _@.3)) c!2)
                  (= ((_ sum 0) _*.5_9) c!3)
                  (%sum _*.5_9 c!3)
                  (= ((_ sum 0) _*.3_5) c!4)
                  (%sum _*.3_5 c!4)
                  (%sum _?.0 _@.2)
                  (%take_some_rest-abs (~mut<%List> _?.0 _*.3_6) _@.3 c!0 c!1)
                  a!2
                  (%sum _*.3_5 _@.6)
                  a!3
                  (= ((_ sum 0) _?.0) _@.2)
                  (= ((_ sum 0) _*.3_5) _@.6)
                  (= _*.3_5 _*.3_6)
                  (= (~ret<%List> (~at1/<~Mut<Int>-~Mut<%List>> _@.5))
                     (~cur<%List> (~at1/<~Mut<Int>-~Mut<%List>> _@.5)))
                  a!4
                  (= (~ret<%List> (~at1/<~Mut<Int>-~Mut<%List>> _@.3)) _*.5_9)
                  a!5)))
    (=> a!6 (%main _!))))))
(assert (forall ((_! Bool) (_1 %List) (c!5 Int))
  (=> (and (= ((_ sum 0) _1) c!5) (%sum _1 c!5) (= _! false))
      (%main.7-abs _1 false _! c!5))))
(assert (forall ((_! Bool) (_1 %List) (c!6 Int))
  (=> (and (= ((_ sum 0) _1) c!6) (%sum _1 c!6) (= _! true))
      (%main.7-abs _1 true _! c!6))))
(assert (forall ((_1 %List) (_@ Int)) (=> (and (%sum.0 _1 _@)) (%sum _1 _@))))
(assert (forall ((_@ Int) (_@.3 Int) (_$.0_0/0 Int) (_$.0_0/1 %List))
  (=> (and (%sum _$.0_0/1 _@.3) (= _@ (+ _$.0_0/0 _@.3)))
      (%sum.0 (%List-0 _$.0_0/0 _$.0_0/1) _@))))
(assert (forall ((_@ Int)) (=> (and (= _@ 0)) (%sum.0 %List-1 _@))))
(assert (forall ((_@ ~Tup<~Mut<Int>-~Mut<%List>>)
         (_1 ~Mut<%List>)
         (c!7 Int)
         (c!8 Int)
         (c!9 Int)
         (c!10 Int))
  (let ((a!1 (and (= ((_ sum 0) (~cur<%List> _1)) c!7)
                  (%sum (~cur<%List> _1) c!7)
                  (= ((_ sum 0) (~ret<%List> _1)) c!8)
                  (%sum (~ret<%List> _1) c!8)
                  (= ((_ sum 0) (~cur<%List> _1)) c!9)
                  (%sum (~cur<%List> _1) c!9)
                  (= ((_ sum 0) (~ret<%List> _1)) c!10)
                  (%sum (~ret<%List> _1) c!10)
                  (%take_some_rest.0-abs _1 _@ c!9 c!10))))
    (=> a!1 (%take_some_rest-abs _1 _@ c!7 c!8)))))
(assert (forall ((_$.0_0/1 %List)
         (_$.0_0/0 Int)
         (_*.3_3 %List)
         (_*.3_1 Int)
         (_?.3 Bool)
         (_@ ~Tup<~Mut<Int>-~Mut<%List>>)
         (_1 ~Mut<%List>)
         (c!11 Int)
         (c!12 Int)
         (c!13 Int)
         (c!14 Int)
         (c!15 Int)
         (c!16 Int))
  (let ((a!1 (and (= ((_ sum 0) (%List-0 _$.0_0/0 _$.0_0/1)) c!11)
                  (%sum (%List-0 _$.0_0/0 _$.0_0/1) c!11)
                  (= ((_ sum 0) (~ret<%List> _1)) c!12)
                  (%sum (~ret<%List> _1) c!12)
                  (= ((_ sum 0) (%List-0 _*.3_1 _*.3_3)) c!13)
                  (%sum (%List-0 _*.3_1 _*.3_3) c!13)
                  (= ((_ sum 0) (~ret<%List> _1)) c!14)
                  (%sum (~ret<%List> _1) c!14)
                  (= ((_ sum 0) _$.0_0/1) c!15)
                  (%sum _$.0_0/1 c!15)
                  (= ((_ sum 0) _*.3_3) c!16)
                  (%sum _*.3_3 c!16)
                  (%take_some_rest.4-abs
                    (~mut<%List> (%List-0 _*.3_1 _*.3_3) (~ret<%List> _1))
                    (~mut<Int> _$.0_0/0 _*.3_1)
                    (~mut<%List> _$.0_0/1 _*.3_3)
                    _?.3
                    _@
                    c!13
                    c!14
                    c!15
                    c!16))))
    (=> a!1
        (%take_some_rest.0-abs
          (~mut<%List> (%List-0 _$.0_0/0 _$.0_0/1) (~ret<%List> _1))
          _@
          c!11
          c!12)))))
(assert (forall ((_*.1_1 %List)
         (_@.1 ~Tup<~Mut<Int>-~Mut<%List>>)
         (_@ ~Tup<~Mut<Int>-~Mut<%List>>)
         (_1 ~Mut<%List>)
         (c!17 Int)
         (c!18 Int)
         (c!19 Int)
         (c!20 Int))
  (let ((a!1 (and (= ((_ sum 0) %List-1) c!17)
                  (%sum %List-1 c!17)
                  (= ((_ sum 0) (~ret<%List> _1)) c!18)
                  (%sum (~ret<%List> _1) c!18)
                  (= ((_ sum 0) %List-1) c!19)
                  (%sum %List-1 c!19)
                  (= ((_ sum 0) _*.1_1) c!20)
                  (%sum _*.1_1 c!20)
                  (%take_some_rest-abs
                    (~mut<%List> %List-1 _*.1_1)
                    _@.1
                    c!19
                    c!20)
                  (= (~ret<%List> _1) _*.1_1)
                  (= _@ _@.1))))
    (=> a!1
        (%take_some_rest.0-abs
          (~mut<%List> %List-1 (~ret<%List> _1))
          _@
          c!17
          c!18)))))
(assert (forall ((_*.5_1 %List)
         (_@.5 ~Tup<~Mut<Int>-~Mut<%List>>)
         (_@ ~Tup<~Mut<Int>-~Mut<%List>>)
         (_4 ~Mut<%List>)
         (_3 ~Mut<Int>)
         (_1 ~Mut<%List>)
         (c!21 Int)
         (c!22 Int)
         (c!23 Int)
         (c!24 Int)
         (c!25 Int)
         (c!26 Int))
  (let ((a!1 (and (= ((_ sum 0) (~cur<%List> _1)) c!21)
                  (%sum (~cur<%List> _1) c!21)
                  (= ((_ sum 0) (~ret<%List> _1)) c!22)
                  (%sum (~ret<%List> _1) c!22)
                  (= ((_ sum 0) (~cur<%List> _4)) c!23)
                  (%sum (~cur<%List> _4) c!23)
                  (= ((_ sum 0) (~ret<%List> _4)) c!24)
                  (%sum (~ret<%List> _4) c!24)
                  (= ((_ sum 0) (~cur<%List> _4)) c!25)
                  (%sum (~cur<%List> _4) c!25)
                  (= ((_ sum 0) _*.5_1) c!26)
                  (%sum _*.5_1 c!26)
                  (%take_some_rest-abs
                    (~mut<%List> (~cur<%List> _4) _*.5_1)
                    _@.5
                    c!25
                    c!26)
                  (= (~ret<%List> _4) _*.5_1)
                  (= (~ret<Int> _3) (~cur<Int> _3))
                  (= (~ret<%List> _1) (~cur<%List> _1))
                  (= _@ _@.5))))
    (=> a!1 (%take_some_rest.4-abs _1 _3 _4 false _@ c!21 c!22 c!23 c!24)))))
(assert (forall ((_*.6_3 %List)
         (_*.6_1 Int)
         (_@ ~Tup<~Mut<Int>-~Mut<%List>>)
         (_4 ~Mut<%List>)
         (_3 ~Mut<Int>)
         (_1 ~Mut<%List>)
         (c!27 Int)
         (c!28 Int)
         (c!29 Int)
         (c!30 Int))
  (let ((a!1 (= _@
                (~tup<~Mut<Int>-~Mut<%List>>
                  (~mut<Int> (~cur<Int> _3) _*.6_1)
                  (~mut<%List> (~cur<%List> _4) _*.6_3)))))
  (let ((a!2 (and (= ((_ sum 0) (~cur<%List> _1)) c!27)
                  (%sum (~cur<%List> _1) c!27)
                  (= ((_ sum 0) (~ret<%List> _1)) c!28)
                  (%sum (~ret<%List> _1) c!28)
                  (= ((_ sum 0) (~cur<%List> _4)) c!29)
                  (%sum (~cur<%List> _4) c!29)
                  (= ((_ sum 0) (~ret<%List> _4)) c!30)
                  (%sum (~ret<%List> _4) c!30)
                  (= (~ret<%List> _4) _*.6_3)
                  (= (~ret<Int> _3) _*.6_1)
                  (= (~ret<%List> _1) (~cur<%List> _1))
                  a!1)))
    (=> a!2 (%take_some_rest.4-abs _1 _3 _4 true _@ c!27 c!28 c!29 c!30))))))
(assert (forall ((_% Int)) (=> (%main true) false)))
(check-sat)