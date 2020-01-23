(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str28 () String)
(declare-fun integer () Int)
(declare-fun integer_fresh () Int)
(declare-fun result () String)
(assert (! 
 (and (= (str.indexof tmp_str28 "" integer) integer_fresh) (and (>= integer 0) (<= integer (str.len tmp_str28)))) :named a1))
(assert (! 
 (let ((?x501 (str.++ (int.to.str (div integer_fresh 10)) (int.to.str (mod integer_fresh 10)))))
 (let (($x89 (= result "9")))
 (let (($x90 (= $x89 true)))
 (let (($x82 (= result "8")))
 (let (($x83 (= $x82 true)))
 (let (($x487 (and (=> (= (= integer_fresh 8) true) $x83) (=> (= (= integer_fresh 9) true) $x90))))
 (let (($x75 (= result "7")))
 (let (($x76 (= $x75 true)))
 (let (($x68 (= result "6")))
 (let (($x69 (= $x68 true)))
 (let (($x489 (and (=> (= (= integer_fresh 6) true) $x69) (and (=> (= (= integer_fresh 7) true) $x76) $x487))))
 (let (($x61 (= result "5")))
 (let (($x62 (= $x61 true)))
 (let (($x54 (= result "4")))
 (let (($x55 (= $x54 true)))
 (let (($x491 (and (=> (= (= integer_fresh 4) true) $x55) (and (=> (= (= integer_fresh 5) true) $x62) $x489))))
 (let (($x47 (= result "3")))
 (let (($x48 (= $x47 true)))
 (let (($x40 (= result "2")))
 (let (($x41 (= $x40 true)))
 (let (($x493 (and (=> (= (= integer_fresh 2) true) $x41) (and (=> (= (= integer_fresh 3) true) $x48) $x491))))
 (let (($x33 (= result "1")))
 (let (($x34 (= $x33 true)))
 (let (($x27 (= result "0")))
 (let (($x28 (= $x27 true)))
 (let (($x495 (and (=> (= (= integer_fresh 0) true) $x28) (and (=> (= (= integer_fresh 1) true) $x34) $x493))))
 (let (($x505 (and $x495 (=> (>= integer_fresh 10) (= (= result ?x501) true)))))
 (and (=> (< integer_fresh 0) (= (= result "") true)) $x505)))))))))))))))))))))))))))) :named a2))
(assert (! 
 (let ((?x15 (int.to.str integer)))
 (let (($x16 (= ?x15 result)))
 (not $x16))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;integer = NO VALUE
;result = NO VALUE
;tmp_str28 = NO VALUE
;integer_fresh = NO VALUE

;unsat core: a0 a1 a2 

