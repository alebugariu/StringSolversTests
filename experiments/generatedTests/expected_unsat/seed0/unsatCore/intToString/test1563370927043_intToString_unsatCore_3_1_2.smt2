(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun integer () Int)
(declare-fun result_fresh () String)
(declare-fun result () String)
(assert (! 
 (let ((?x105 (mod integer 10)))
 (let ((?x106 (int.to.str ?x105)))
 (let ((?x103 (div integer 10)))
 (let ((?x104 (int.to.str ?x103)))
 (let ((?x107 (str.++ ?x104 ?x106)))
 (let (($x541 (= result_fresh ?x107)))
 (let (($x542 (= $x541 true)))
 (let (($x102 (>= integer 10)))
 (let (($x543 (=> $x102 $x542)))
 (let (($x529 (= result_fresh "9")))
 (let (($x530 (= $x529 true)))
 (let (($x86 (= integer 9)))
 (let (($x87 (= $x86 true)))
 (let (($x531 (=> $x87 $x530)))
 (let (($x526 (= result_fresh "8")))
 (let (($x527 (= $x526 true)))
 (let (($x79 (= integer 8)))
 (let (($x80 (= $x79 true)))
 (let (($x528 (=> $x80 $x527)))
 (let (($x532 (and $x528 $x531)))
 (let (($x523 (= result_fresh "7")))
 (let (($x524 (= $x523 true)))
 (let (($x72 (= integer 7)))
 (let (($x73 (= $x72 true)))
 (let (($x525 (=> $x73 $x524)))
 (let (($x533 (and $x525 $x532)))
 (let (($x520 (= result_fresh "6")))
 (let (($x521 (= $x520 true)))
 (let (($x65 (= integer 6)))
 (let (($x66 (= $x65 true)))
 (let (($x522 (=> $x66 $x521)))
 (let (($x534 (and $x522 $x533)))
 (let (($x517 (= result_fresh "5")))
 (let (($x518 (= $x517 true)))
 (let (($x58 (= integer 5)))
 (let (($x59 (= $x58 true)))
 (let (($x519 (=> $x59 $x518)))
 (let (($x535 (and $x519 $x534)))
 (let (($x514 (= result_fresh "4")))
 (let (($x515 (= $x514 true)))
 (let (($x51 (= integer 4)))
 (let (($x52 (= $x51 true)))
 (let (($x516 (=> $x52 $x515)))
 (let (($x536 (and $x516 $x535)))
 (let (($x511 (= result_fresh "3")))
 (let (($x512 (= $x511 true)))
 (let (($x44 (= integer 3)))
 (let (($x45 (= $x44 true)))
 (let (($x513 (=> $x45 $x512)))
 (let (($x537 (and $x513 $x536)))
 (let (($x508 (= result_fresh "2")))
 (let (($x509 (= $x508 true)))
 (let (($x37 (= integer 2)))
 (let (($x38 (= $x37 true)))
 (let (($x510 (=> $x38 $x509)))
 (let (($x538 (and $x510 $x537)))
 (let (($x505 (= result_fresh "1")))
 (let (($x506 (= $x505 true)))
 (let (($x30 (= integer 1)))
 (let (($x31 (= $x30 true)))
 (let (($x507 (=> $x31 $x506)))
 (let (($x539 (and $x507 $x538)))
 (let (($x502 (= result_fresh "0")))
 (let (($x503 (= $x502 true)))
 (let (($x24 (= integer 0)))
 (let (($x25 (= $x24 true)))
 (let (($x504 (=> $x25 $x503)))
 (let (($x540 (and $x504 $x539)))
 (let (($x544 (and $x540 $x543)))
 (let (($x499 (= result_fresh "")))
 (let (($x500 (= $x499 true)))
 (let (($x19 (< integer 0)))
 (let (($x501 (=> $x19 $x500)))
 (and $x501 $x544)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) :named a1))
(assert (! 
 (let ((?x419 (str.++ "" result)))
 (= ?x419 result_fresh)) :named a2))
(assert (! 
 (let ((?x15 (int.to.str integer)))
 (let (($x16 (= ?x15 result)))
 (not $x16))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;integer = NO VALUE
;result = NO VALUE
;result_fresh = NO VALUE

;unsat core: a0 a1 a2 

