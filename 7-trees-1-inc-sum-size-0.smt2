(set-logic HORN)
(declare-datatypes ((%Tree 0)) (((%Tree-0 (%Tree-0.0 %Tree) (%Tree-0.1 Int) (%Tree-0.2 %Tree)) (%Tree-1))))
(declare-datatypes ((~Mut<%Tree> 0)) (((~mut<%Tree> (~cur<%Tree> %Tree) (~ret<%Tree> %Tree)))))
(declare-fun %inc-abs (~Mut<%Tree> Int Int Int Int) Bool)
(declare-fun %inc.0-abs (~Mut<%Tree> Int Int Int Int) Bool)
(declare-fun %sum (%Tree Int) Bool)
(declare-fun %size (%Tree Int) Bool)
(declare-fun %main (Bool) Bool)
(declare-fun %main.7-abs (%Tree Bool Bool Int Int) Bool)
(declare-fun %size.0 (%Tree Int) Bool)
(declare-fun %sum.0 (%Tree Int) Bool)
(define-funs-rec ( ( size ((x!1 %Tree)) Int) ( sum ((x!1 %Tree)) Int))
                 ( (ite (= x!1 %Tree-1)
                        0
                        (+ 1
                           ((_ size 0) (%Tree-0.0 x!1))
                           ((_ size 0) (%Tree-0.2 x!1))))
                   (ite (= x!1 %Tree-1)
                        0
                        (+ (%Tree-0.1 x!1)
                           ((_ sum 0) (%Tree-0.0 x!1))
                           ((_ sum 0) (%Tree-0.2 x!1))))))
(assert (forall ((_1 ~Mut<%Tree>)
         (c!0 Int)
         (c!1 Int)
         (c!2 Int)
         (c!3 Int)
         (c!4 Int)
         (c!5 Int)
         (c!6 Int)
         (c!7 Int))
  (let ((a!1 (and (= ((_ size 0) (~cur<%Tree> _1)) c!0)
                  (%size (~cur<%Tree> _1) c!0)
                  (= ((_ size 0) (~ret<%Tree> _1)) c!1)
                  (%size (~ret<%Tree> _1) c!1)
                  (= ((_ sum 0) (~cur<%Tree> _1)) c!2)
                  (%sum (~cur<%Tree> _1) c!2)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!3)
                  (%sum (~ret<%Tree> _1) c!3)
                  (= ((_ size 0) (~cur<%Tree> _1)) c!4)
                  (%size (~cur<%Tree> _1) c!4)
                  (= ((_ size 0) (~ret<%Tree> _1)) c!5)
                  (%size (~ret<%Tree> _1) c!5)
                  (= ((_ sum 0) (~cur<%Tree> _1)) c!6)
                  (%sum (~cur<%Tree> _1) c!6)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!7)
                  (%sum (~ret<%Tree> _1) c!7)
                  (%inc.0-abs _1 c!4 c!5 c!6 c!7))))
    (=> a!1 (%inc-abs _1 c!0 c!1 c!2 c!3)))))
(assert (forall ((_$.0_0/2 %Tree)
         (_$.0_0/1 Int)
         (_$.0_0/0 %Tree)
         (_*.3_5 %Tree)
         (_*.2_8 %Tree)
         (_*.2_5 %Tree)
         (_*.2_3 Int)
         (_*.2_1 %Tree)
         (_1 ~Mut<%Tree>)
         (c!8 Int)
         (c!9 Int)
         (c!10 Int)
         (c!11 Int)
         (c!12 Int)
         (c!13 Int)
         (c!14 Int)
         (c!15 Int)
         (c!16 Int)
         (c!17 Int)
         (c!18 Int)
         (c!19 Int))
  (let ((a!1 (and (= ((_ size 0) (%Tree-0 _$.0_0/0 _$.0_0/1 _$.0_0/2)) c!8)
                  (%size (%Tree-0 _$.0_0/0 _$.0_0/1 _$.0_0/2) c!8)
                  (= ((_ size 0) (~ret<%Tree> _1)) c!9)
                  (%size (~ret<%Tree> _1) c!9)
                  (= ((_ sum 0) (%Tree-0 _$.0_0/0 _$.0_0/1 _$.0_0/2)) c!10)
                  (%sum (%Tree-0 _$.0_0/0 _$.0_0/1 _$.0_0/2) c!10)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!11)
                  (%sum (~ret<%Tree> _1) c!11)
                  (= ((_ size 0) _$.0_0/0) c!12)
                  (%size _$.0_0/0 c!12)
                  (= ((_ size 0) _*.2_8) c!13)
                  (%size _*.2_8 c!13)
                  (= ((_ sum 0) _$.0_0/0) c!14)
                  (%sum _$.0_0/0 c!14)
                  (= ((_ sum 0) _*.2_8) c!15)
                  (%sum _*.2_8 c!15)
                  (= ((_ size 0) _$.0_0/2) c!16)
                  (%size _$.0_0/2 c!16)
                  (= ((_ size 0) _*.3_5) c!17)
                  (%size _*.3_5 c!17)
                  (= ((_ sum 0) _$.0_0/2) c!18)
                  (%sum _$.0_0/2 c!18)
                  (= ((_ sum 0) _*.3_5) c!19)
                  (%sum _*.3_5 c!19)
                  (%inc-abs (~mut<%Tree> _$.0_0/0 _*.2_8) c!12 c!13 c!14 c!15)
                  (%inc-abs (~mut<%Tree> _$.0_0/2 _*.3_5) c!16 c!17 c!18 c!19)
                  (= _*.2_5 _*.3_5)
                  (= _*.2_3 (+ _$.0_0/1 1))
                  (= _*.2_1 _*.2_8)
                  (= (~ret<%Tree> _1) (%Tree-0 _*.2_1 _*.2_3 _*.2_5))
                  true)))
    (=> a!1
        (%inc.0-abs (~mut<%Tree> (%Tree-0 _$.0_0/0 _$.0_0/1 _$.0_0/2)
                                 (~ret<%Tree> _1))
                    c!8
                    c!9
                    c!10
                    c!11)))))
(assert (forall ((_1 ~Mut<%Tree>) (c!20 Int) (c!21 Int) (c!22 Int) (c!23 Int))
  (let ((a!1 (and (= ((_ size 0) %Tree-1) c!20)
                  (%size %Tree-1 c!20)
                  (= ((_ size 0) (~ret<%Tree> _1)) c!21)
                  (%size (~ret<%Tree> _1) c!21)
                  (= ((_ sum 0) %Tree-1) c!22)
                  (%sum %Tree-1 c!22)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!23)
                  (%sum (~ret<%Tree> _1) c!23)
                  (= (~ret<%Tree> _1) %Tree-1)
                  true)))
    (=> a!1
        (%inc.0-abs (~mut<%Tree> %Tree-1 (~ret<%Tree> _1)) c!20 c!21 c!22 c!23)))))
(assert (forall ((_*.5_6 %Tree)
         (_*.5_5 %Tree)
         (_?.0 %Tree)
         (_@.6 Int)
         (_@.3 Int)
         (_@.2 Int)
         (_! Bool)
         (c!24 Int)
         (c!25 Int)
         (c!26 Int)
         (c!27 Int)
         (c!28 Int)
         (c!29 Int))
  (let ((a!1 (%main.7-abs _*.5_5 (not (= _@.6 (+ _@.2 _@.3))) _! c!28 c!29)))
    (=> (and (= ((_ size 0) _?.0) c!24)
             (%size _?.0 c!24)
             (= ((_ size 0) _*.5_6) c!25)
             (%size _*.5_6 c!25)
             (= ((_ sum 0) _?.0) c!26)
             (%sum _?.0 c!26)
             (= ((_ sum 0) _*.5_6) c!27)
             (%sum _*.5_6 c!27)
             (= ((_ size 0) _*.5_5) c!28)
             (%size _*.5_5 c!28)
             (= ((_ sum 0) _*.5_5) c!29)
             (%sum _*.5_5 c!29)
             (%sum _?.0 _@.2)
             (%size _?.0 _@.3)
             (%inc-abs (~mut<%Tree> _?.0 _*.5_6) c!24 c!25 c!26 c!27)
             (%sum _*.5_5 _@.6)
             a!1
             (= ((_ size 0) _?.0) _@.3)
             (= ((_ sum 0) _?.0) _@.2)
             (= ((_ sum 0) _*.5_5) _@.6)
             (= _*.5_5 _*.5_6))
        (%main _!)))))
(assert (forall ((_! Bool) (_1 %Tree) (c!30 Int) (c!31 Int))
  (=> (and (= ((_ size 0) _1) c!30)
           (%size _1 c!30)
           (= ((_ sum 0) _1) c!31)
           (%sum _1 c!31)
           (= _! false))
      (%main.7-abs _1 false _! c!30 c!31))))
(assert (forall ((_! Bool) (_1 %Tree) (c!32 Int) (c!33 Int))
  (=> (and (= ((_ size 0) _1) c!32)
           (%size _1 c!32)
           (= ((_ sum 0) _1) c!33)
           (%sum _1 c!33)
           (= _! true))
      (%main.7-abs _1 true _! c!32 c!33))))
(assert (forall ((_1 %Tree) (_@ Int)) (=> (and (%size.0 _1 _@)) (%size _1 _@))))
(assert (forall ((_@ Int)
         (_@.3 Int)
         (_@.4 Int)
         (_$.0_0/0 %Tree)
         (_$.0_0/1 Int)
         (_$.0_0/2 %Tree))
  (=> (and (%size _$.0_0/0 _@.3) (%size _$.0_0/2 _@.4) (= _@ (+ _@.3 1 _@.4)))
      (%size.0 (%Tree-0 _$.0_0/0 _$.0_0/1 _$.0_0/2) _@))))
(assert (forall ((_@ Int)) (=> (and (= _@ 0)) (%size.0 %Tree-1 _@))))
(assert (forall ((_1 %Tree) (_@ Int)) (=> (and (%sum.0 _1 _@)) (%sum _1 _@))))
(assert (forall ((_@ Int)
         (_@.3 Int)
         (_@.5 Int)
         (_$.0_0/0 %Tree)
         (_$.0_0/1 Int)
         (_$.0_0/2 %Tree))
  (=> (and (%sum _$.0_0/0 _@.3)
           (%sum _$.0_0/2 _@.5)
           (= _@ (+ _@.3 _$.0_0/1 _@.5)))
      (%sum.0 (%Tree-0 _$.0_0/0 _$.0_0/1 _$.0_0/2) _@))))
(assert (forall ((_@ Int)) (=> (and (= _@ 0)) (%sum.0 %Tree-1 _@))))
(assert (forall ((_% Int)) (=> (%main true) false)))
(check-sat)