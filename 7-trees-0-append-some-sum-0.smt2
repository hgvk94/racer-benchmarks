(set-logic HORN)
(declare-datatypes ((%Tree 0)) (((%Tree-0 (%Tree-0.0 %Tree) (%Tree-0.1 Int) (%Tree-0.2 %Tree)) (%Tree-1))))
(declare-datatypes ((~Mut<Int> 0)) (((~mut<Int> (~cur<Int> Int) (~ret<Int> Int)))))
(declare-datatypes ((~Mut<%Tree> 0)) (((~mut<%Tree> (~cur<%Tree> %Tree) (~ret<%Tree> %Tree)))))
(declare-fun %append_some-abs (~Mut<%Tree> %Tree Int Int Int) Bool)
(declare-fun %append_some.0-abs (~Mut<%Tree> %Tree Int Int Int) Bool)
(declare-fun %sum (%Tree Int) Bool)
(declare-fun %append_some.5-abs
             (~Mut<%Tree>
              %Tree
              ~Mut<%Tree>
              ~Mut<Int>
              ~Mut<%Tree>
              Bool
              Int
              Int
              Int
              Int
              Int
              Int
              Int)
             Bool)
(declare-fun %main (Bool) Bool)
(declare-fun %main.8-abs (%Tree %Tree Bool Bool Int Int) Bool)
(declare-fun %sum.0 (%Tree Int) Bool)
(define-funs-rec ( ( sum ((x!1 %Tree)) Int))
                 ( (ite (= x!1 %Tree-1)
                        0
                        (+ (%Tree-0.1 x!1)
                           ((_ sum 0) (%Tree-0.0 x!1))
                           ((_ sum 0) (%Tree-0.2 x!1))))))
(assert (forall ((_2 %Tree)
         (_1 ~Mut<%Tree>)
         (c!0 Int)
         (c!1 Int)
         (c!2 Int)
         (c!3 Int)
         (c!4 Int)
         (c!5 Int))
  (let ((a!1 (and (= ((_ sum 0) _2) c!0)
                  (%sum _2 c!0)
                  (= ((_ sum 0) (~cur<%Tree> _1)) c!1)
                  (%sum (~cur<%Tree> _1) c!1)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!2)
                  (%sum (~ret<%Tree> _1) c!2)
                  (= ((_ sum 0) _2) c!3)
                  (%sum _2 c!3)
                  (= ((_ sum 0) (~cur<%Tree> _1)) c!4)
                  (%sum (~cur<%Tree> _1) c!4)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!5)
                  (%sum (~ret<%Tree> _1) c!5)
                  (%append_some.0-abs _1 _2 c!3 c!4 c!5))))
    (=> a!1 (%append_some-abs _1 _2 c!0 c!1 c!2)))))
(assert (forall ((_$.0_0/2 %Tree)
         (_$.0_0/1 Int)
         (_$.0_0/0 %Tree)
         (_*.4_5 %Tree)
         (_*.4_3 Int)
         (_*.4_1 %Tree)
         (_?.4 Bool)
         (_2 %Tree)
         (_1 ~Mut<%Tree>)
         (c!6 Int)
         (c!7 Int)
         (c!8 Int)
         (c!9 Int)
         (c!10 Int)
         (c!11 Int)
         (c!12 Int)
         (c!13 Int)
         (c!14 Int)
         (c!15 Int))
  (let ((a!1 (and (= ((_ sum 0) _2) c!6)
                  (%sum _2 c!6)
                  (= ((_ sum 0) (%Tree-0 _$.0_0/0 _$.0_0/1 _$.0_0/2)) c!7)
                  (%sum (%Tree-0 _$.0_0/0 _$.0_0/1 _$.0_0/2) c!7)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!8)
                  (%sum (~ret<%Tree> _1) c!8)
                  (= ((_ sum 0) _2) c!9)
                  (%sum _2 c!9)
                  (= ((_ sum 0) (%Tree-0 _*.4_1 _*.4_3 _*.4_5)) c!10)
                  (%sum (%Tree-0 _*.4_1 _*.4_3 _*.4_5) c!10)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!11)
                  (%sum (~ret<%Tree> _1) c!11)
                  (= ((_ sum 0) _$.0_0/0) c!12)
                  (%sum _$.0_0/0 c!12)
                  (= ((_ sum 0) _*.4_1) c!13)
                  (%sum _*.4_1 c!13)
                  (= ((_ sum 0) _$.0_0/2) c!14)
                  (%sum _$.0_0/2 c!14)
                  (= ((_ sum 0) _*.4_5) c!15)
                  (%sum _*.4_5 c!15)
                  (%append_some.5-abs
                    (~mut<%Tree> (%Tree-0 _*.4_1 _*.4_3 _*.4_5)
                                 (~ret<%Tree> _1))
                    _2
                    (~mut<%Tree> _$.0_0/0 _*.4_1)
                    (~mut<Int> _$.0_0/1 _*.4_3)
                    (~mut<%Tree> _$.0_0/2 _*.4_5)
                    _?.4
                    c!9
                    c!10
                    c!11
                    c!12
                    c!13
                    c!14
                    c!15))))
    (=> a!1
        (%append_some.0-abs
          (~mut<%Tree> (%Tree-0 _$.0_0/0 _$.0_0/1 _$.0_0/2) (~ret<%Tree> _1))
          _2
          c!6
          c!7
          c!8)))))
(assert (forall ((_2 %Tree) (_1 ~Mut<%Tree>) (c!16 Int) (c!17 Int) (c!18 Int))
  (let ((a!1 (and (= ((_ sum 0) _2) c!16)
                  (%sum _2 c!16)
                  (= ((_ sum 0) %Tree-1) c!17)
                  (%sum %Tree-1 c!17)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!18)
                  (%sum (~ret<%Tree> _1) c!18)
                  (= (~ret<%Tree> _1) _2)
                  true)))
    (=> a!1
        (%append_some.0-abs
          (~mut<%Tree> %Tree-1 (~ret<%Tree> _1))
          _2
          c!16
          c!17
          c!18)))))
(assert (forall ((_*.6_1 %Tree)
         (_6 ~Mut<%Tree>)
         (_5 ~Mut<Int>)
         (_4 ~Mut<%Tree>)
         (_2 %Tree)
         (_1 ~Mut<%Tree>)
         (c!19 Int)
         (c!20 Int)
         (c!21 Int)
         (c!22 Int)
         (c!23 Int)
         (c!24 Int)
         (c!25 Int)
         (c!26 Int)
         (c!27 Int)
         (c!28 Int))
  (let ((a!1 (and (= ((_ sum 0) _2) c!19)
                  (%sum _2 c!19)
                  (= ((_ sum 0) (~cur<%Tree> _1)) c!20)
                  (%sum (~cur<%Tree> _1) c!20)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!21)
                  (%sum (~ret<%Tree> _1) c!21)
                  (= ((_ sum 0) (~cur<%Tree> _4)) c!22)
                  (%sum (~cur<%Tree> _4) c!22)
                  (= ((_ sum 0) (~ret<%Tree> _4)) c!23)
                  (%sum (~ret<%Tree> _4) c!23)
                  (= ((_ sum 0) (~cur<%Tree> _6)) c!24)
                  (%sum (~cur<%Tree> _6) c!24)
                  (= ((_ sum 0) (~ret<%Tree> _6)) c!25)
                  (%sum (~ret<%Tree> _6) c!25)
                  (= ((_ sum 0) _2) c!26)
                  (%sum _2 c!26)
                  (= ((_ sum 0) (~cur<%Tree> _6)) c!27)
                  (%sum (~cur<%Tree> _6) c!27)
                  (= ((_ sum 0) _*.6_1) c!28)
                  (%sum _*.6_1 c!28)
                  (%append_some-abs (~mut<%Tree> (~cur<%Tree> _6) _*.6_1)
                                    _2
                                    c!26
                                    c!27
                                    c!28)
                  (= (~ret<%Tree> _6) _*.6_1)
                  (= (~ret<Int> _5) (~cur<Int> _5))
                  (= (~ret<%Tree> _4) (~cur<%Tree> _4))
                  (= (~ret<%Tree> _1) (~cur<%Tree> _1))
                  true)))
    (=> a!1
        (%append_some.5-abs
          _1
          _2
          _4
          _5
          _6
          false
          c!19
          c!20
          c!21
          c!22
          c!23
          c!24
          c!25)))))
(assert (forall ((_*.7_1 %Tree)
         (_6 ~Mut<%Tree>)
         (_5 ~Mut<Int>)
         (_4 ~Mut<%Tree>)
         (_2 %Tree)
         (_1 ~Mut<%Tree>)
         (c!29 Int)
         (c!30 Int)
         (c!31 Int)
         (c!32 Int)
         (c!33 Int)
         (c!34 Int)
         (c!35 Int)
         (c!36 Int)
         (c!37 Int)
         (c!38 Int))
  (let ((a!1 (and (= ((_ sum 0) _2) c!29)
                  (%sum _2 c!29)
                  (= ((_ sum 0) (~cur<%Tree> _1)) c!30)
                  (%sum (~cur<%Tree> _1) c!30)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!31)
                  (%sum (~ret<%Tree> _1) c!31)
                  (= ((_ sum 0) (~cur<%Tree> _4)) c!32)
                  (%sum (~cur<%Tree> _4) c!32)
                  (= ((_ sum 0) (~ret<%Tree> _4)) c!33)
                  (%sum (~ret<%Tree> _4) c!33)
                  (= ((_ sum 0) (~cur<%Tree> _6)) c!34)
                  (%sum (~cur<%Tree> _6) c!34)
                  (= ((_ sum 0) (~ret<%Tree> _6)) c!35)
                  (%sum (~ret<%Tree> _6) c!35)
                  (= ((_ sum 0) _2) c!36)
                  (%sum _2 c!36)
                  (= ((_ sum 0) (~cur<%Tree> _4)) c!37)
                  (%sum (~cur<%Tree> _4) c!37)
                  (= ((_ sum 0) _*.7_1) c!38)
                  (%sum _*.7_1 c!38)
                  (%append_some-abs (~mut<%Tree> (~cur<%Tree> _4) _*.7_1)
                                    _2
                                    c!36
                                    c!37
                                    c!38)
                  (= (~ret<%Tree> _6) (~cur<%Tree> _6))
                  (= (~ret<Int> _5) (~cur<Int> _5))
                  (= (~ret<%Tree> _4) _*.7_1)
                  (= (~ret<%Tree> _1) (~cur<%Tree> _1))
                  true)))
    (=> a!1
        (%append_some.5-abs
          _1
          _2
          _4
          _5
          _6
          true
          c!29
          c!30
          c!31
          c!32
          c!33
          c!34
          c!35)))))
(assert (forall ((_! Bool)
         (_@.3 Int)
         (_@.5 Int)
         (_@.7 Int)
         (_?.0 %Tree)
         (_?.2 %Tree)
         (_*.6_5 %Tree)
         (_*.6_6 %Tree)
         (_%.0 %Tree)
         (c!39 Int)
         (c!40 Int)
         (c!41 Int)
         (c!42 Int)
         (c!43 Int))
  (let ((a!1 (%main.8-abs _*.6_5 _%.0 (not (= _@.7 (+ _@.3 _@.5))) _! c!42 c!43)))
    (=> (and (= ((_ sum 0) _?.2) c!39)
             (%sum _?.2 c!39)
             (= ((_ sum 0) _?.0) c!40)
             (%sum _?.0 c!40)
             (= ((_ sum 0) _*.6_6) c!41)
             (%sum _*.6_6 c!41)
             (= ((_ sum 0) _*.6_5) c!42)
             (%sum _*.6_5 c!42)
             (= ((_ sum 0) _%.0) c!43)
             (%sum _%.0 c!43)
             (%sum _?.0 _@.3)
             (%sum _?.2 _@.5)
             (%append_some-abs (~mut<%Tree> _?.0 _*.6_6) _?.2 c!39 c!40 c!41)
             (%sum _*.6_5 _@.7)
             a!1
             (= ((_ sum 0) _?.0) _@.3)
             (= ((_ sum 0) _?.2) _@.5)
             (= ((_ sum 0) _*.6_5) _@.7)
             (= _*.6_5 _*.6_6))
        (%main _!)))))
(assert (forall ((_! Bool) (_2 %Tree) (_1 %Tree) (c!44 Int) (c!45 Int))
  (=> (and (= ((_ sum 0) _1) c!44)
           (%sum _1 c!44)
           (= ((_ sum 0) _2) c!45)
           (%sum _2 c!45)
           (= _! false))
      (%main.8-abs _1 _2 false _! c!44 c!45))))
(assert (forall ((_! Bool) (_2 %Tree) (_1 %Tree) (c!46 Int) (c!47 Int))
  (=> (and (= ((_ sum 0) _1) c!46)
           (%sum _1 c!46)
           (= ((_ sum 0) _2) c!47)
           (%sum _2 c!47)
           (= _! true))
      (%main.8-abs _1 _2 true _! c!46 c!47))))
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