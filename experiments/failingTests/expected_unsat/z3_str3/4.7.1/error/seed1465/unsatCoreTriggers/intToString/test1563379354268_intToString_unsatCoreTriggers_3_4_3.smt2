(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str3 () String)
(declare-fun integer () Int)
(declare-fun result () String)
(declare-fun tmp_bool2_fresh () Bool)
(assert (! 
 (= (str.prefixof tmp_str3 tmp_str3) tmp_bool2_fresh) :named a1))
(assert (! 
 (let ((?x105 (mod integer 10)))
 (let ((?x106 (int.to.str ?x105)))
 (let ((?x103 (div integer 10)))
 (let ((?x104 (int.to.str ?x103)))
 (let ((?x107 (str.++ ?x104 ?x106)))
 (let (($x108 (= result ?x107)))
 (let (($x648 (= $x108 tmp_bool2_fresh)))
 (let (($x102 (>= integer 10)))
 (let (($x649 (=> $x102 $x648)))
 (let (($x89 (= result "9")))
 (let (($x637 (= $x89 tmp_bool2_fresh)))
 (let (($x86 (= integer 9)))
 (let (($x636 (= $x86 tmp_bool2_fresh)))
 (let (($x638 (=> $x636 $x637)))
 (let (($x82 (= result "8")))
 (let (($x634 (= $x82 tmp_bool2_fresh)))
 (let (($x79 (= integer 8)))
 (let (($x633 (= $x79 tmp_bool2_fresh)))
 (let (($x635 (=> $x633 $x634)))
 (let (($x639 (and $x635 $x638)))
 (let (($x75 (= result "7")))
 (let (($x631 (= $x75 tmp_bool2_fresh)))
 (let (($x72 (= integer 7)))
 (let (($x630 (= $x72 tmp_bool2_fresh)))
 (let (($x632 (=> $x630 $x631)))
 (let (($x640 (and $x632 $x639)))
 (let (($x68 (= result "6")))
 (let (($x628 (= $x68 tmp_bool2_fresh)))
 (let (($x65 (= integer 6)))
 (let (($x627 (= $x65 tmp_bool2_fresh)))
 (let (($x629 (=> $x627 $x628)))
 (let (($x641 (and $x629 $x640)))
 (let (($x61 (= result "5")))
 (let (($x625 (= $x61 tmp_bool2_fresh)))
 (let (($x58 (= integer 5)))
 (let (($x624 (= $x58 tmp_bool2_fresh)))
 (let (($x626 (=> $x624 $x625)))
 (let (($x642 (and $x626 $x641)))
 (let (($x54 (= result "4")))
 (let (($x622 (= $x54 tmp_bool2_fresh)))
 (let (($x51 (= integer 4)))
 (let (($x621 (= $x51 tmp_bool2_fresh)))
 (let (($x623 (=> $x621 $x622)))
 (let (($x643 (and $x623 $x642)))
 (let (($x47 (= result "3")))
 (let (($x619 (= $x47 tmp_bool2_fresh)))
 (let (($x44 (= integer 3)))
 (let (($x618 (= $x44 tmp_bool2_fresh)))
 (let (($x620 (=> $x618 $x619)))
 (let (($x644 (and $x620 $x643)))
 (let (($x40 (= result "2")))
 (let (($x616 (= $x40 tmp_bool2_fresh)))
 (let (($x37 (= integer 2)))
 (let (($x615 (= $x37 tmp_bool2_fresh)))
 (let (($x617 (=> $x615 $x616)))
 (let (($x645 (and $x617 $x644)))
 (let (($x33 (= result "1")))
 (let (($x613 (= $x33 tmp_bool2_fresh)))
 (let (($x30 (= integer 1)))
 (let (($x612 (= $x30 tmp_bool2_fresh)))
 (let (($x614 (=> $x612 $x613)))
 (let (($x646 (and $x614 $x645)))
 (let (($x27 (= result "0")))
 (let (($x610 (= $x27 tmp_bool2_fresh)))
 (let (($x24 (= integer 0)))
 (let (($x609 (= $x24 tmp_bool2_fresh)))
 (let (($x611 (=> $x609 $x610)))
 (let (($x647 (and $x611 $x646)))
 (let (($x650 (and $x647 $x649)))
 (let (($x21 (= result "")))
 (let (($x607 (= $x21 tmp_bool2_fresh)))
 (let (($x19 (< integer 0)))
 (let (($x608 (=> $x19 $x607)))
 (and $x608 $x650)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) :named a2))
(assert (! 
 (let ((?x15 (int.to.str integer)))
 (let (($x16 (= ?x15 result)))
 (not $x16))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;integer = NO VALUE
;result = NO VALUE
;tmp_str3 = NO VALUE
;tmp_bool2_fresh = true

;unsat core: a0 a1 a2 

;actual status: not_implemented
