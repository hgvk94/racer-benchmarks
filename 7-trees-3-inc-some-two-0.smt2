(set-logic HORN)
(declare-datatypes ((%Tree 0)) (((%Tree-0 (%Tree-0.0 %Tree) (%Tree-0.1 Int) (%Tree-0.2 %Tree)) (%Tree-1))))
(declare-datatypes ((~Mut<Int> 0)) (((~mut<Int> (~cur<Int> Int) (~ret<Int> Int)))))
(declare-datatypes ((~Mut<%Tree> 0)) (((~mut<%Tree> (~cur<%Tree> %Tree) (~ret<%Tree> %Tree)))))
(declare-datatypes ((~Tup<~Mut<Int>-~Mut<%Tree>> 0)) (((~tup<~Mut<Int>-~Mut<%Tree>> (~at0/<~Mut<Int>-~Mut<%Tree>> ~Mut<Int>) (~at1/<~Mut<Int>-~Mut<%Tree>> ~Mut<%Tree>)))))
(declare-fun %main (Bool) Bool)
(declare-fun %main.7-abs (%Tree Bool Bool Int) Bool)
(declare-fun %sum (%Tree Int) Bool)
(declare-fun %some-abs (~Mut<%Tree> ~Tup<~Mut<Int>-~Mut<%Tree>> Int Int) Bool)
(declare-fun %some.0-abs (~Mut<%Tree> ~Tup<~Mut<Int>-~Mut<%Tree>> Int Int) Bool)
(declare-fun %some.4-abs
             (~Mut<%Tree>
              ~Mut<%Tree>
              ~Mut<Int>
              ~Mut<%Tree>
              Bool
              ~Tup<~Mut<Int>-~Mut<%Tree>>
              Int
              Int
              Int
              Int
              Int
              Int)
             Bool)
(declare-fun %some.11-abs
             (~Mut<%Tree>
              ~Mut<%Tree>
              ~Mut<Int>
              ~Mut<%Tree>
              Bool
              Bool
              ~Tup<~Mut<Int>-~Mut<%Tree>>
              Int
              Int
              Int
              Int
              Int
              Int)
             Bool)
(declare-fun %some.7-abs
             (~Mut<%Tree>
              ~Mut<%Tree>
              ~Mut<Int>
              ~Mut<%Tree>
              Bool
              ~Mut<Int>
              Bool
              ~Tup<~Mut<Int>-~Mut<%Tree>>
              Int
              Int
              Int
              Int
              Int
              Int)
             Bool)
(declare-fun %sum.0 (%Tree Int) Bool)
(define-funs-rec ( ( sum ((x!1 %Tree)) Int))
                 ( (ite (= x!1 %Tree-1)
                        0
                        (+ (%Tree-0.1 x!1)
                           ((_ sum 0) (%Tree-0.0 x!1))
                           ((_ sum 0) (%Tree-0.2 x!1))))))
(assert (forall ((_! Bool)
         (_@.2 Int)
         (_@.3 ~Tup<~Mut<Int>-~Mut<%Tree>>)
         (_@.5 ~Tup<~Mut<Int>-~Mut<%Tree>>)
         (_@.6 Int)
         (_?.0 %Tree)
         (_*.3_5 %Tree)
         (_*.3_6 %Tree)
         (_*.5_9 %Tree)
         (c!0 Int)
         (c!1 Int)
         (c!2 Int)
         (c!3 Int)
         (c!4 Int))
  (let ((a!1 (= ((_ sum 0) (~cur<%Tree> (~at1/<~Mut<Int>-~Mut<%Tree>> _@.3)))
                c!2))
        (a!2 (%some-abs (~mut<%Tree> (~cur<%Tree> (~at1/<~Mut<Int>-~Mut<%Tree>>
                                                    _@.3))
                                     _*.5_9)
                        _@.5
                        c!2
                        c!3))
        (a!3 (%main.7-abs _*.3_5 (not (= _@.6 (+ _@.2 2))) _! c!4))
        (a!4 (= (~ret<Int> (~at0/<~Mut<Int>-~Mut<%Tree>> _@.3))
                (+ (~cur<Int> (~at0/<~Mut<Int>-~Mut<%Tree>> _@.3)) 1)))
        (a!5 (= (~ret<Int> (~at0/<~Mut<Int>-~Mut<%Tree>> _@.5))
                (+ (~cur<Int> (~at0/<~Mut<Int>-~Mut<%Tree>> _@.5)) 1))))
  (let ((a!6 (and (= ((_ sum 0) _?.0) c!0)
                  (%sum _?.0 c!0)
                  (= ((_ sum 0) _*.3_6) c!1)
                  (%sum _*.3_6 c!1)
                  a!1
                  (%sum (~cur<%Tree> (~at1/<~Mut<Int>-~Mut<%Tree>> _@.3)) c!2)
                  (= ((_ sum 0) _*.5_9) c!3)
                  (%sum _*.5_9 c!3)
                  (= ((_ sum 0) _*.3_5) c!4)
                  (%sum _*.3_5 c!4)
                  (%sum _?.0 _@.2)
                  (%some-abs (~mut<%Tree> _?.0 _*.3_6) _@.3 c!0 c!1)
                  a!2
                  (%sum _*.3_5 _@.6)
                  a!3
                  (= ((_ sum 0) _?.0) _@.2)
                  (= ((_ sum 0) _*.3_5) _@.6)
                  (= _*.3_5 _*.3_6)
                  (= (~ret<%Tree> (~at1/<~Mut<Int>-~Mut<%Tree>> _@.5))
                     (~cur<%Tree> (~at1/<~Mut<Int>-~Mut<%Tree>> _@.5)))
                  a!4
                  (= (~ret<%Tree> (~at1/<~Mut<Int>-~Mut<%Tree>> _@.3)) _*.5_9)
                  a!5)))
    (=> a!6 (%main _!))))))
(assert (forall ((_! Bool) (_1 %Tree) (c!5 Int))
  (=> (and (= ((_ sum 0) _1) c!5) (%sum _1 c!5) (= _! false))
      (%main.7-abs _1 false _! c!5))))
(assert (forall ((_! Bool) (_1 %Tree) (c!6 Int))
  (=> (and (= ((_ sum 0) _1) c!6) (%sum _1 c!6) (= _! true))
      (%main.7-abs _1 true _! c!6))))
(assert (forall ((_@ ~Tup<~Mut<Int>-~Mut<%Tree>>)
         (_1 ~Mut<%Tree>)
         (c!7 Int)
         (c!8 Int)
         (c!9 Int)
         (c!10 Int))
  (let ((a!1 (and (= ((_ sum 0) (~cur<%Tree> _1)) c!7)
                  (%sum (~cur<%Tree> _1) c!7)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!8)
                  (%sum (~ret<%Tree> _1) c!8)
                  (= ((_ sum 0) (~cur<%Tree> _1)) c!9)
                  (%sum (~cur<%Tree> _1) c!9)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!10)
                  (%sum (~ret<%Tree> _1) c!10)
                  (%some.0-abs _1 _@ c!9 c!10))))
    (=> a!1 (%some-abs _1 _@ c!7 c!8)))))
(assert (forall ((_$.0_0/2 %Tree)
         (_$.0_0/1 Int)
         (_$.0_0/0 %Tree)
         (_*.3_5 %Tree)
         (_*.3_3 Int)
         (_*.3_1 %Tree)
         (_?.3 Bool)
         (_@ ~Tup<~Mut<Int>-~Mut<%Tree>>)
         (_1 ~Mut<%Tree>)
         (c!11 Int)
         (c!12 Int)
         (c!13 Int)
         (c!14 Int)
         (c!15 Int)
         (c!16 Int)
         (c!17 Int)
         (c!18 Int))
  (let ((a!1 (and (= ((_ sum 0) (%Tree-0 _$.0_0/0 _$.0_0/1 _$.0_0/2)) c!11)
                  (%sum (%Tree-0 _$.0_0/0 _$.0_0/1 _$.0_0/2) c!11)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!12)
                  (%sum (~ret<%Tree> _1) c!12)
                  (= ((_ sum 0) (%Tree-0 _*.3_1 _*.3_3 _*.3_5)) c!13)
                  (%sum (%Tree-0 _*.3_1 _*.3_3 _*.3_5) c!13)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!14)
                  (%sum (~ret<%Tree> _1) c!14)
                  (= ((_ sum 0) _$.0_0/0) c!15)
                  (%sum _$.0_0/0 c!15)
                  (= ((_ sum 0) _*.3_1) c!16)
                  (%sum _*.3_1 c!16)
                  (= ((_ sum 0) _$.0_0/2) c!17)
                  (%sum _$.0_0/2 c!17)
                  (= ((_ sum 0) _*.3_5) c!18)
                  (%sum _*.3_5 c!18)
                  (%some.4-abs (~mut<%Tree> (%Tree-0 _*.3_1 _*.3_3 _*.3_5)
                                            (~ret<%Tree> _1))
                               (~mut<%Tree> _$.0_0/0 _*.3_1)
                               (~mut<Int> _$.0_0/1 _*.3_3)
                               (~mut<%Tree> _$.0_0/2 _*.3_5)
                               _?.3
                               _@
                               c!13
                               c!14
                               c!15
                               c!16
                               c!17
                               c!18))))
    (=> a!1
        (%some.0-abs (~mut<%Tree> (%Tree-0 _$.0_0/0 _$.0_0/1 _$.0_0/2)
                                  (~ret<%Tree> _1))
                     _@
                     c!11
                     c!12)))))
(assert (forall ((_*.1_1 %Tree)
         (_@.1 ~Tup<~Mut<Int>-~Mut<%Tree>>)
         (_@ ~Tup<~Mut<Int>-~Mut<%Tree>>)
         (_1 ~Mut<%Tree>)
         (c!19 Int)
         (c!20 Int)
         (c!21 Int)
         (c!22 Int))
  (let ((a!1 (and (= ((_ sum 0) %Tree-1) c!19)
                  (%sum %Tree-1 c!19)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!20)
                  (%sum (~ret<%Tree> _1) c!20)
                  (= ((_ sum 0) %Tree-1) c!21)
                  (%sum %Tree-1 c!21)
                  (= ((_ sum 0) _*.1_1) c!22)
                  (%sum _*.1_1 c!22)
                  (%some-abs (~mut<%Tree> %Tree-1 _*.1_1) _@.1 c!21 c!22)
                  (= (~ret<%Tree> _1) _*.1_1)
                  (= _@ _@.1))))
    (=> a!1 (%some.0-abs (~mut<%Tree> %Tree-1 (~ret<%Tree> _1)) _@ c!19 c!20)))))
(assert (forall ((_?.5 Bool)
         (_@ ~Tup<~Mut<Int>-~Mut<%Tree>>)
         (_5 ~Mut<%Tree>)
         (_4 ~Mut<Int>)
         (_3 ~Mut<%Tree>)
         (_1 ~Mut<%Tree>)
         (c!23 Int)
         (c!24 Int)
         (c!25 Int)
         (c!26 Int)
         (c!27 Int)
         (c!28 Int)
         (c!29 Int)
         (c!30 Int)
         (c!31 Int)
         (c!32 Int)
         (c!33 Int)
         (c!34 Int))
  (let ((a!1 (and (= ((_ sum 0) (~cur<%Tree> _1)) c!23)
                  (%sum (~cur<%Tree> _1) c!23)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!24)
                  (%sum (~ret<%Tree> _1) c!24)
                  (= ((_ sum 0) (~cur<%Tree> _3)) c!25)
                  (%sum (~cur<%Tree> _3) c!25)
                  (= ((_ sum 0) (~ret<%Tree> _3)) c!26)
                  (%sum (~ret<%Tree> _3) c!26)
                  (= ((_ sum 0) (~cur<%Tree> _5)) c!27)
                  (%sum (~cur<%Tree> _5) c!27)
                  (= ((_ sum 0) (~ret<%Tree> _5)) c!28)
                  (%sum (~ret<%Tree> _5) c!28)
                  (= ((_ sum 0) (~cur<%Tree> _1)) c!29)
                  (%sum (~cur<%Tree> _1) c!29)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!30)
                  (%sum (~ret<%Tree> _1) c!30)
                  (= ((_ sum 0) (~cur<%Tree> _3)) c!31)
                  (%sum (~cur<%Tree> _3) c!31)
                  (= ((_ sum 0) (~ret<%Tree> _3)) c!32)
                  (%sum (~ret<%Tree> _3) c!32)
                  (= ((_ sum 0) (~cur<%Tree> _5)) c!33)
                  (%sum (~cur<%Tree> _5) c!33)
                  (= ((_ sum 0) (~ret<%Tree> _5)) c!34)
                  (%sum (~ret<%Tree> _5) c!34)
                  (%some.11-abs _1
                                _3
                                _4
                                _5
                                false
                                _?.5
                                _@
                                c!29
                                c!30
                                c!31
                                c!32
                                c!33
                                c!34))))
    (=> a!1 (%some.4-abs _1 _3 _4 _5 false _@ c!23 c!24 c!25 c!26 c!27 c!28)))))
(assert (forall ((_*.6_1 Int)
         (_?.6 Bool)
         (_@ ~Tup<~Mut<Int>-~Mut<%Tree>>)
         (_5 ~Mut<%Tree>)
         (_4 ~Mut<Int>)
         (_3 ~Mut<%Tree>)
         (_1 ~Mut<%Tree>)
         (c!35 Int)
         (c!36 Int)
         (c!37 Int)
         (c!38 Int)
         (c!39 Int)
         (c!40 Int)
         (c!41 Int)
         (c!42 Int)
         (c!43 Int)
         (c!44 Int)
         (c!45 Int)
         (c!46 Int))
  (let ((a!1 (and (= ((_ sum 0) (~cur<%Tree> _1)) c!35)
                  (%sum (~cur<%Tree> _1) c!35)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!36)
                  (%sum (~ret<%Tree> _1) c!36)
                  (= ((_ sum 0) (~cur<%Tree> _3)) c!37)
                  (%sum (~cur<%Tree> _3) c!37)
                  (= ((_ sum 0) (~ret<%Tree> _3)) c!38)
                  (%sum (~ret<%Tree> _3) c!38)
                  (= ((_ sum 0) (~cur<%Tree> _5)) c!39)
                  (%sum (~cur<%Tree> _5) c!39)
                  (= ((_ sum 0) (~ret<%Tree> _5)) c!40)
                  (%sum (~ret<%Tree> _5) c!40)
                  (= ((_ sum 0) (~cur<%Tree> _1)) c!41)
                  (%sum (~cur<%Tree> _1) c!41)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!42)
                  (%sum (~ret<%Tree> _1) c!42)
                  (= ((_ sum 0) (~cur<%Tree> _3)) c!43)
                  (%sum (~cur<%Tree> _3) c!43)
                  (= ((_ sum 0) (~ret<%Tree> _3)) c!44)
                  (%sum (~ret<%Tree> _3) c!44)
                  (= ((_ sum 0) (~cur<%Tree> _5)) c!45)
                  (%sum (~cur<%Tree> _5) c!45)
                  (= ((_ sum 0) (~ret<%Tree> _5)) c!46)
                  (%sum (~ret<%Tree> _5) c!46)
                  (%some.7-abs _1
                               _3
                               (~mut<Int> _*.6_1 (~ret<Int> _4))
                               _5
                               true
                               (~mut<Int> (~cur<Int> _4) _*.6_1)
                               _?.6
                               _@
                               c!41
                               c!42
                               c!43
                               c!44
                               c!45
                               c!46))))
    (=> a!1 (%some.4-abs _1 _3 _4 _5 true _@ c!35 c!36 c!37 c!38 c!39 c!40)))))
(assert (forall ((_*.10_0 %Tree)
         (_*.8_2 %Tree)
         (_*.8_1 %Tree)
         (_@ ~Tup<~Mut<Int>-~Mut<%Tree>>)
         (_7 ~Mut<Int>)
         (_6 Bool)
         (_5 ~Mut<%Tree>)
         (_4 ~Mut<Int>)
         (_3 ~Mut<%Tree>)
         (_1 ~Mut<%Tree>)
         (c!47 Int)
         (c!48 Int)
         (c!49 Int)
         (c!50 Int)
         (c!51 Int)
         (c!52 Int))
  (let ((a!1 (= _@
                (~tup<~Mut<Int>-~Mut<%Tree>>
                  _7
                  (~mut<%Tree> (~cur<%Tree> _5) _*.10_0)))))
  (let ((a!2 (and (= ((_ sum 0) (~cur<%Tree> _1)) c!47)
                  (%sum (~cur<%Tree> _1) c!47)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!48)
                  (%sum (~ret<%Tree> _1) c!48)
                  (= ((_ sum 0) (~cur<%Tree> _3)) c!49)
                  (%sum (~cur<%Tree> _3) c!49)
                  (= ((_ sum 0) (~ret<%Tree> _3)) c!50)
                  (%sum (~ret<%Tree> _3) c!50)
                  (= ((_ sum 0) (~cur<%Tree> _5)) c!51)
                  (%sum (~cur<%Tree> _5) c!51)
                  (= ((_ sum 0) (~ret<%Tree> _5)) c!52)
                  (%sum (~ret<%Tree> _5) c!52)
                  (= _*.8_1 _*.8_2)
                  (= _*.8_2 _*.10_0)
                  (= (~ret<%Tree> _5) _*.8_1)
                  (= (~ret<Int> _4) (~cur<Int> _4))
                  (= (~ret<%Tree> _3) (~cur<%Tree> _3))
                  (= (~ret<%Tree> _1) (~cur<%Tree> _1))
                  a!1)))
    (=> a!2
        (%some.7-abs _1 _3 _4 _5 _6 _7 false _@ c!47 c!48 c!49 c!50 c!51 c!52))))))
(assert (forall ((_*.10_0 %Tree)
         (_*.9_2 %Tree)
         (_*.9_1 %Tree)
         (_@ ~Tup<~Mut<Int>-~Mut<%Tree>>)
         (_7 ~Mut<Int>)
         (_6 Bool)
         (_5 ~Mut<%Tree>)
         (_4 ~Mut<Int>)
         (_3 ~Mut<%Tree>)
         (_1 ~Mut<%Tree>)
         (c!53 Int)
         (c!54 Int)
         (c!55 Int)
         (c!56 Int)
         (c!57 Int)
         (c!58 Int))
  (let ((a!1 (= _@
                (~tup<~Mut<Int>-~Mut<%Tree>>
                  _7
                  (~mut<%Tree> (~cur<%Tree> _3) _*.10_0)))))
  (let ((a!2 (and (= ((_ sum 0) (~cur<%Tree> _1)) c!53)
                  (%sum (~cur<%Tree> _1) c!53)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!54)
                  (%sum (~ret<%Tree> _1) c!54)
                  (= ((_ sum 0) (~cur<%Tree> _3)) c!55)
                  (%sum (~cur<%Tree> _3) c!55)
                  (= ((_ sum 0) (~ret<%Tree> _3)) c!56)
                  (%sum (~ret<%Tree> _3) c!56)
                  (= ((_ sum 0) (~cur<%Tree> _5)) c!57)
                  (%sum (~cur<%Tree> _5) c!57)
                  (= ((_ sum 0) (~ret<%Tree> _5)) c!58)
                  (%sum (~ret<%Tree> _5) c!58)
                  (= _*.9_1 _*.9_2)
                  (= _*.9_2 _*.10_0)
                  (= (~ret<%Tree> _5) (~cur<%Tree> _5))
                  (= (~ret<Int> _4) (~cur<Int> _4))
                  (= (~ret<%Tree> _3) _*.9_1)
                  (= (~ret<%Tree> _1) (~cur<%Tree> _1))
                  a!1)))
    (=> a!2
        (%some.7-abs _1 _3 _4 _5 _6 _7 true _@ c!53 c!54 c!55 c!56 c!57 c!58))))))
(assert (forall ((_*.12_1 %Tree)
         (_@.12 ~Tup<~Mut<Int>-~Mut<%Tree>>)
         (_@ ~Tup<~Mut<Int>-~Mut<%Tree>>)
         (_6 Bool)
         (_5 ~Mut<%Tree>)
         (_4 ~Mut<Int>)
         (_3 ~Mut<%Tree>)
         (_1 ~Mut<%Tree>)
         (c!59 Int)
         (c!60 Int)
         (c!61 Int)
         (c!62 Int)
         (c!63 Int)
         (c!64 Int)
         (c!65 Int)
         (c!66 Int))
  (let ((a!1 (and (= ((_ sum 0) (~cur<%Tree> _1)) c!59)
                  (%sum (~cur<%Tree> _1) c!59)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!60)
                  (%sum (~ret<%Tree> _1) c!60)
                  (= ((_ sum 0) (~cur<%Tree> _3)) c!61)
                  (%sum (~cur<%Tree> _3) c!61)
                  (= ((_ sum 0) (~ret<%Tree> _3)) c!62)
                  (%sum (~ret<%Tree> _3) c!62)
                  (= ((_ sum 0) (~cur<%Tree> _5)) c!63)
                  (%sum (~cur<%Tree> _5) c!63)
                  (= ((_ sum 0) (~ret<%Tree> _5)) c!64)
                  (%sum (~ret<%Tree> _5) c!64)
                  (= ((_ sum 0) (~cur<%Tree> _5)) c!65)
                  (%sum (~cur<%Tree> _5) c!65)
                  (= ((_ sum 0) _*.12_1) c!66)
                  (%sum _*.12_1 c!66)
                  (%some-abs (~mut<%Tree> (~cur<%Tree> _5) _*.12_1)
                             _@.12
                             c!65
                             c!66)
                  (= (~ret<%Tree> _5) _*.12_1)
                  (= (~ret<Int> _4) (~cur<Int> _4))
                  (= (~ret<%Tree> _3) (~cur<%Tree> _3))
                  (= (~ret<%Tree> _1) (~cur<%Tree> _1))
                  (= _@ _@.12))))
    (=> a!1
        (%some.11-abs _1 _3 _4 _5 _6 false _@ c!59 c!60 c!61 c!62 c!63 c!64)))))
(assert (forall ((_*.13_1 %Tree)
         (_@.13 ~Tup<~Mut<Int>-~Mut<%Tree>>)
         (_@ ~Tup<~Mut<Int>-~Mut<%Tree>>)
         (_6 Bool)
         (_5 ~Mut<%Tree>)
         (_4 ~Mut<Int>)
         (_3 ~Mut<%Tree>)
         (_1 ~Mut<%Tree>)
         (c!67 Int)
         (c!68 Int)
         (c!69 Int)
         (c!70 Int)
         (c!71 Int)
         (c!72 Int)
         (c!73 Int)
         (c!74 Int))
  (let ((a!1 (and (= ((_ sum 0) (~cur<%Tree> _1)) c!67)
                  (%sum (~cur<%Tree> _1) c!67)
                  (= ((_ sum 0) (~ret<%Tree> _1)) c!68)
                  (%sum (~ret<%Tree> _1) c!68)
                  (= ((_ sum 0) (~cur<%Tree> _3)) c!69)
                  (%sum (~cur<%Tree> _3) c!69)
                  (= ((_ sum 0) (~ret<%Tree> _3)) c!70)
                  (%sum (~ret<%Tree> _3) c!70)
                  (= ((_ sum 0) (~cur<%Tree> _5)) c!71)
                  (%sum (~cur<%Tree> _5) c!71)
                  (= ((_ sum 0) (~ret<%Tree> _5)) c!72)
                  (%sum (~ret<%Tree> _5) c!72)
                  (= ((_ sum 0) (~cur<%Tree> _3)) c!73)
                  (%sum (~cur<%Tree> _3) c!73)
                  (= ((_ sum 0) _*.13_1) c!74)
                  (%sum _*.13_1 c!74)
                  (%some-abs (~mut<%Tree> (~cur<%Tree> _3) _*.13_1)
                             _@.13
                             c!73
                             c!74)
                  (= (~ret<%Tree> _5) (~cur<%Tree> _5))
                  (= (~ret<Int> _4) (~cur<Int> _4))
                  (= (~ret<%Tree> _3) _*.13_1)
                  (= (~ret<%Tree> _1) (~cur<%Tree> _1))
                  (= _@ _@.13))))
    (=> a!1 (%some.11-abs _1 _3 _4 _5 _6 true _@ c!67 c!68 c!69 c!70 c!71 c!72)))))
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