(set-logic HORN)
(declare-datatypes ((%List 0)) (((%List-0 (%List-0.0 Int) (%List-0.1 %List)) (%List-1))))
(declare-datatypes ((~Mut<%List> 0)) (((~mut<%List> (~cur<%List> %List) (~ret<%List> %List)))))
(declare-fun %inc-abs (~Mut<%List> Int Int Int Int) Bool)
(declare-fun %inc.0-abs (~Mut<%List> Int Int Int Int) Bool)
(declare-fun %length (%List Int) Bool)
(declare-fun %sum (%List Int) Bool)
(declare-fun %length.0 (%List Int) Bool)
(declare-fun %main (Bool) Bool)
(declare-fun %main.7-abs (%List Bool Bool Int Int) Bool)
(declare-fun %sum.0 (%List Int) Bool)
(define-funs-rec ( ( length ((x!1 %List)) Int) ( sum ((x!1 %List)) Int))
                 ( (ite (= x!1 %List-1) 0 (+ 1 ((_ length 0) (%List-0.1 x!1))))
                   (ite (= x!1 %List-1)
                        0
                        (+ (%List-0.0 x!1) ((_ sum 0) (%List-0.1 x!1))))))
(assert (forall ((_1 ~Mut<%List>)
         (c!0 Int)
         (c!1 Int)
         (c!2 Int)
         (c!3 Int)
         (c!4 Int)
         (c!5 Int)
         (c!6 Int)
         (c!7 Int))
  (let ((a!1 (and (= ((_ sum 0) (~cur<%List> _1)) c!0)
                  (%sum (~cur<%List> _1) c!0)
                  (= ((_ sum 0) (~ret<%List> _1)) c!1)
                  (%sum (~ret<%List> _1) c!1)
                  (= ((_ length 0) (~cur<%List> _1)) c!2)
                  (%length (~cur<%List> _1) c!2)
                  (= ((_ length 0) (~ret<%List> _1)) c!3)
                  (%length (~ret<%List> _1) c!3)
                  (= ((_ sum 0) (~cur<%List> _1)) c!4)
                  (%sum (~cur<%List> _1) c!4)
                  (= ((_ sum 0) (~ret<%List> _1)) c!5)
                  (%sum (~ret<%List> _1) c!5)
                  (= ((_ length 0) (~cur<%List> _1)) c!6)
                  (%length (~cur<%List> _1) c!6)
                  (= ((_ length 0) (~ret<%List> _1)) c!7)
                  (%length (~ret<%List> _1) c!7)
                  (%inc.0-abs _1 c!4 c!5 c!6 c!7))))
    (=> a!1 (%inc-abs _1 c!0 c!1 c!2 c!3)))))
(assert (forall ((_$.0_0/1 %List)
         (_$.0_0/0 Int)
         (_*.2_7 %List)
         (_*.2_3 %List)
         (_*.2_1 Int)
         (_1 ~Mut<%List>)
         (c!8 Int)
         (c!9 Int)
         (c!10 Int)
         (c!11 Int)
         (c!12 Int)
         (c!13 Int)
         (c!14 Int)
         (c!15 Int))
  (let ((a!1 (and (= ((_ sum 0) (%List-0 _$.0_0/0 _$.0_0/1)) c!8)
                  (%sum (%List-0 _$.0_0/0 _$.0_0/1) c!8)
                  (= ((_ sum 0) (~ret<%List> _1)) c!9)
                  (%sum (~ret<%List> _1) c!9)
                  (= ((_ length 0) (%List-0 _$.0_0/0 _$.0_0/1)) c!10)
                  (%length (%List-0 _$.0_0/0 _$.0_0/1) c!10)
                  (= ((_ length 0) (~ret<%List> _1)) c!11)
                  (%length (~ret<%List> _1) c!11)
                  (= ((_ sum 0) _$.0_0/1) c!12)
                  (%sum _$.0_0/1 c!12)
                  (= ((_ sum 0) _*.2_7) c!13)
                  (%sum _*.2_7 c!13)
                  (= ((_ length 0) _$.0_0/1) c!14)
                  (%length _$.0_0/1 c!14)
                  (= ((_ length 0) _*.2_7) c!15)
                  (%length _*.2_7 c!15)
                  (%inc-abs (~mut<%List> _$.0_0/1 _*.2_7) c!12 c!13 c!14 c!15)
                  (= _*.2_3 _*.2_7)
                  (= _*.2_1 (+ _$.0_0/0 1))
                  (= (~ret<%List> _1) (%List-0 _*.2_1 _*.2_3))
                  true)))
    (=> a!1
        (%inc.0-abs (~mut<%List> (%List-0 _$.0_0/0 _$.0_0/1) (~ret<%List> _1))
                    c!8
                    c!9
                    c!10
                    c!11)))))
(assert (forall ((_1 ~Mut<%List>) (c!16 Int) (c!17 Int) (c!18 Int) (c!19 Int))
  (let ((a!1 (and (= ((_ sum 0) %List-1) c!16)
                  (%sum %List-1 c!16)
                  (= ((_ sum 0) (~ret<%List> _1)) c!17)
                  (%sum (~ret<%List> _1) c!17)
                  (= ((_ length 0) %List-1) c!18)
                  (%length %List-1 c!18)
                  (= ((_ length 0) (~ret<%List> _1)) c!19)
                  (%length (~ret<%List> _1) c!19)
                  (= (~ret<%List> _1) %List-1)
                  true)))
    (=> a!1
        (%inc.0-abs (~mut<%List> %List-1 (~ret<%List> _1)) c!16 c!17 c!18 c!19)))))
(assert (forall ((_1 %List) (_@ Int)) (=> (and (%length.0 _1 _@)) (%length _1 _@))))
(assert (forall ((_@ Int) (_@.3 Int) (_$.0_0/0 Int) (_$.0_0/1 %List))
  (=> (and (%length _$.0_0/1 _@.3) (= _@ (+ 1 _@.3)))
      (%length.0 (%List-0 _$.0_0/0 _$.0_0/1) _@))))
(assert (forall ((_@ Int)) (=> (and (= _@ 0)) (%length.0 %List-1 _@))))
(assert (forall ((_*.5_6 %List)
         (_*.5_5 %List)
         (_?.0 %List)
         (_@.6 Int)
         (_@.3 Int)
         (_@.2 Int)
         (_! Bool)
         (c!20 Int)
         (c!21 Int)
         (c!22 Int)
         (c!23 Int)
         (c!24 Int)
         (c!25 Int))
  (let ((a!1 (%main.7-abs _*.5_5 (not (> _@.6 (+ _@.2 _@.3))) _! c!24 c!25)))
    (=> (and (= ((_ sum 0) _?.0) c!20)
             (%sum _?.0 c!20)
             (= ((_ sum 0) _*.5_6) c!21)
             (%sum _*.5_6 c!21)
             (= ((_ length 0) _?.0) c!22)
             (%length _?.0 c!22)
             (= ((_ length 0) _*.5_6) c!23)
             (%length _*.5_6 c!23)
             (= ((_ sum 0) _*.5_5) c!24)
             (%sum _*.5_5 c!24)
             (= ((_ length 0) _*.5_5) c!25)
             (%length _*.5_5 c!25)
             (%sum _?.0 _@.2)
             (%length _?.0 _@.3)
             (%inc-abs (~mut<%List> _?.0 _*.5_6) c!20 c!21 c!22 c!23)
             (%sum _*.5_5 _@.6)
             a!1
             (= ((_ sum 0) _?.0) _@.2)
             (= ((_ sum 0) _*.5_5) _@.6)
             (= ((_ length 0) _?.0) _@.3)
             (= _*.5_5 _*.5_6))
        (%main _!)))))
(assert (forall ((_! Bool) (_1 %List) (c!26 Int) (c!27 Int))
  (=> (and (= ((_ sum 0) _1) c!26)
           (%sum _1 c!26)
           (= ((_ length 0) _1) c!27)
           (%length _1 c!27)
           (= _! false))
      (%main.7-abs _1 false _! c!26 c!27))))
(assert (forall ((_! Bool) (_1 %List) (c!28 Int) (c!29 Int))
  (=> (and (= ((_ sum 0) _1) c!28)
           (%sum _1 c!28)
           (= ((_ length 0) _1) c!29)
           (%length _1 c!29)
           (= _! true))
      (%main.7-abs _1 true _! c!28 c!29))))
(assert (forall ((_1 %List) (_@ Int)) (=> (and (%sum.0 _1 _@)) (%sum _1 _@))))
(assert (forall ((_@ Int) (_@.3 Int) (_$.0_0/0 Int) (_$.0_0/1 %List))
  (=> (and (%sum _$.0_0/1 _@.3) (= _@ (+ _$.0_0/0 _@.3)))
      (%sum.0 (%List-0 _$.0_0/0 _$.0_0/1) _@))))
(assert (forall ((_@ Int)) (=> (and (= _@ 0)) (%sum.0 %List-1 _@))))
(assert (forall ((_% Int)) (=> (%main true) false)))
(check-sat)