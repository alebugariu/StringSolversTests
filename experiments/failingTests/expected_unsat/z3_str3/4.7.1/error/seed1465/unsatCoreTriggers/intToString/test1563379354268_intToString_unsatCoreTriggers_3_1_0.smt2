(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () String)
(declare-fun result_fresh () String)
(declare-fun integer () Int)
(assert (! 
 (let ((?x422 (str.len result)))
 (let (($x423 (= ?x422 1)))
 (let ((?x420 (str.at result 0)))
 (let (($x421 (= ?x420 result_fresh)))
 (and $x421 $x423))))) :named a1))
(assert (! 
 (let ((?x105 (mod integer 10)))
 (let ((?x106 (int.to.str ?x105)))
 (let ((?x103 (div integer 10)))
 (let ((?x104 (int.to.str ?x103)))
 (let ((?x107 (str.++ ?x104 ?x106)))
 (let (($x102 (>= integer 10)))
 (let (($x86 (= integer 9)))
 (let (($x87 (= $x86 true)))
 (let (($x79 (= integer 8)))
 (let (($x80 (= $x79 true)))
 (let (($x540 (and (=> $x80 (= (= result_fresh "8") true)) (=> $x87 (= (= result_fresh "9") true)))))
 (let (($x72 (= integer 7)))
 (let (($x73 (= $x72 true)))
 (let (($x65 (= integer 6)))
 (let (($x66 (= $x65 true)))
 (let (($x542 (and (=> $x66 (= (= result_fresh "6") true)) (and (=> $x73 (= (= result_fresh "7") true)) $x540))))
 (let (($x58 (= integer 5)))
 (let (($x59 (= $x58 true)))
 (let (($x51 (= integer 4)))
 (let (($x52 (= $x51 true)))
 (let (($x544 (and (=> $x52 (= (= result_fresh "4") true)) (and (=> $x59 (= (= result_fresh "5") true)) $x542))))
 (let (($x44 (= integer 3)))
 (let (($x45 (= $x44 true)))
 (let (($x37 (= integer 2)))
 (let (($x38 (= $x37 true)))
 (let (($x546 (and (=> $x38 (= (= result_fresh "2") true)) (and (=> $x45 (= (= result_fresh "3") true)) $x544))))
 (let (($x30 (= integer 1)))
 (let (($x31 (= $x30 true)))
 (let (($x24 (= integer 0)))
 (let (($x25 (= $x24 true)))
 (let (($x548 (and (=> $x25 (= (= result_fresh "0") true)) (and (=> $x31 (= (= result_fresh "1") true)) $x546))))
 (and (=> (< integer 0) (= (= result_fresh "") true)) (and $x548 (=> $x102 (= (= result_fresh ?x107) true))))))))))))))))))))))))))))))))))) :named a2))
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

;actual status: not_implemented
