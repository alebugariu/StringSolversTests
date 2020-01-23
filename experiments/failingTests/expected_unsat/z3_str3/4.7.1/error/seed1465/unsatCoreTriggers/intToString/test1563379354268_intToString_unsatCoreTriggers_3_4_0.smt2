(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun integer () Int)
(declare-fun result () String)
(declare-fun tmp_str28 () String)
(declare-fun tmp_bool2_fresh () Bool)
(assert (! 
 (let ((?x105 (mod integer 10)))
 (let ((?x106 (int.to.str ?x105)))
 (let ((?x103 (div integer 10)))
 (let ((?x104 (int.to.str ?x103)))
 (let ((?x107 (str.++ ?x104 ?x106)))
 (let (($x108 (= result ?x107)))
 (let (($x102 (>= integer 10)))
 (let (($x638 (=> (= (= integer 9) tmp_bool2_fresh) (= (= result "9") tmp_bool2_fresh))))
 (let (($x635 (=> (= (= integer 8) tmp_bool2_fresh) (= (= result "8") tmp_bool2_fresh))))
 (let (($x632 (=> (= (= integer 7) tmp_bool2_fresh) (= (= result "7") tmp_bool2_fresh))))
 (let (($x629 (=> (= (= integer 6) tmp_bool2_fresh) (= (= result "6") tmp_bool2_fresh))))
 (let (($x626 (=> (= (= integer 5) tmp_bool2_fresh) (= (= result "5") tmp_bool2_fresh))))
 (let (($x623 (=> (= (= integer 4) tmp_bool2_fresh) (= (= result "4") tmp_bool2_fresh))))
 (let (($x620 (=> (= (= integer 3) tmp_bool2_fresh) (= (= result "3") tmp_bool2_fresh))))
 (let (($x644 (and $x620 (and $x623 (and $x626 (and $x629 (and $x632 (and $x635 $x638))))))))
 (let (($x617 (=> (= (= integer 2) tmp_bool2_fresh) (= (= result "2") tmp_bool2_fresh))))
 (let (($x614 (=> (= (= integer 1) tmp_bool2_fresh) (= (= result "1") tmp_bool2_fresh))))
 (let (($x611 (=> (= (= integer 0) tmp_bool2_fresh) (= (= result "0") tmp_bool2_fresh))))
 (let (($x650 (and (and $x611 (and $x614 (and $x617 $x644))) (=> $x102 (= $x108 tmp_bool2_fresh)))))
 (and (=> (< integer 0) (= (= result "") tmp_bool2_fresh)) $x650)))))))))))))))))))) :named a1))
(assert (! 
 (= (str.contains tmp_str28 tmp_str28) tmp_bool2_fresh) :named a2))
(assert (! 
 (let ((?x15 (int.to.str integer)))
 (let (($x16 (= ?x15 result)))
 (not $x16))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;integer = NO VALUE
;result = NO VALUE
;tmp_bool2_fresh = true
;tmp_str28 = NO VALUE

;unsat core: a0 a1 a2 

;actual status: not_implemented
