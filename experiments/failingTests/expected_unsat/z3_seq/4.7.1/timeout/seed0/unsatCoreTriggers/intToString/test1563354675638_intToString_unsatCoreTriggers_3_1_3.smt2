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
 (let (($x549 (= result_fresh ?x107)))
 (let (($x550 (= $x549 true)))
 (let (($x102 (>= integer 10)))
 (let (($x551 (=> $x102 $x550)))
 (let (($x537 (= result_fresh "9")))
 (let (($x538 (= $x537 true)))
 (let (($x86 (= integer 9)))
 (let (($x87 (= $x86 true)))
 (let (($x539 (=> $x87 $x538)))
 (let (($x534 (= result_fresh "8")))
 (let (($x535 (= $x534 true)))
 (let (($x79 (= integer 8)))
 (let (($x80 (= $x79 true)))
 (let (($x536 (=> $x80 $x535)))
 (let (($x540 (and $x536 $x539)))
 (let (($x531 (= result_fresh "7")))
 (let (($x532 (= $x531 true)))
 (let (($x72 (= integer 7)))
 (let (($x73 (= $x72 true)))
 (let (($x533 (=> $x73 $x532)))
 (let (($x541 (and $x533 $x540)))
 (let (($x528 (= result_fresh "6")))
 (let (($x529 (= $x528 true)))
 (let (($x65 (= integer 6)))
 (let (($x66 (= $x65 true)))
 (let (($x530 (=> $x66 $x529)))
 (let (($x542 (and $x530 $x541)))
 (let (($x525 (= result_fresh "5")))
 (let (($x526 (= $x525 true)))
 (let (($x58 (= integer 5)))
 (let (($x59 (= $x58 true)))
 (let (($x527 (=> $x59 $x526)))
 (let (($x543 (and $x527 $x542)))
 (let (($x522 (= result_fresh "4")))
 (let (($x523 (= $x522 true)))
 (let (($x51 (= integer 4)))
 (let (($x52 (= $x51 true)))
 (let (($x524 (=> $x52 $x523)))
 (let (($x544 (and $x524 $x543)))
 (let (($x519 (= result_fresh "3")))
 (let (($x520 (= $x519 true)))
 (let (($x44 (= integer 3)))
 (let (($x45 (= $x44 true)))
 (let (($x521 (=> $x45 $x520)))
 (let (($x545 (and $x521 $x544)))
 (let (($x516 (= result_fresh "2")))
 (let (($x517 (= $x516 true)))
 (let (($x37 (= integer 2)))
 (let (($x38 (= $x37 true)))
 (let (($x518 (=> $x38 $x517)))
 (let (($x546 (and $x518 $x545)))
 (let (($x513 (= result_fresh "1")))
 (let (($x514 (= $x513 true)))
 (let (($x30 (= integer 1)))
 (let (($x31 (= $x30 true)))
 (let (($x515 (=> $x31 $x514)))
 (let (($x547 (and $x515 $x546)))
 (let (($x510 (= result_fresh "0")))
 (let (($x511 (= $x510 true)))
 (let (($x24 (= integer 0)))
 (let (($x25 (= $x24 true)))
 (let (($x512 (=> $x25 $x511)))
 (let (($x548 (and $x512 $x547)))
 (let (($x552 (and $x548 $x551)))
 (let (($x507 (= result_fresh "")))
 (let (($x508 (= $x507 true)))
 (let (($x19 (< integer 0)))
 (let (($x509 (=> $x19 $x508)))
 (and $x509 $x552)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) :named a1))
(assert (! 
 (let ((?x429 (str.replace result result result)))
 (= ?x429 result_fresh)) :named a2))
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

;actual status: timeout
