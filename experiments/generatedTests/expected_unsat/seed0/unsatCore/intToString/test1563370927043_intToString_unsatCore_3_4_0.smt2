(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str2 () String)
(declare-fun integer () Int)
(declare-fun result () String)
(declare-fun tmp_bool2_fresh () Bool)
(assert (! 
 (= (str.contains tmp_str2 tmp_str2) tmp_bool2_fresh) :named a1))
(assert (! 
 (let ((?x105 (mod integer 10)))
 (let ((?x106 (int.to.str ?x105)))
 (let ((?x103 (div integer 10)))
 (let ((?x104 (int.to.str ?x103)))
 (let ((?x107 (str.++ ?x104 ?x106)))
 (let (($x108 (= result ?x107)))
 (let (($x102 (>= integer 10)))
 (let (($x632 (=> (= (= integer 9) tmp_bool2_fresh) (= (= result "9") tmp_bool2_fresh))))
 (let (($x629 (=> (= (= integer 8) tmp_bool2_fresh) (= (= result "8") tmp_bool2_fresh))))
 (let (($x626 (=> (= (= integer 7) tmp_bool2_fresh) (= (= result "7") tmp_bool2_fresh))))
 (let (($x623 (=> (= (= integer 6) tmp_bool2_fresh) (= (= result "6") tmp_bool2_fresh))))
 (let (($x620 (=> (= (= integer 5) tmp_bool2_fresh) (= (= result "5") tmp_bool2_fresh))))
 (let (($x617 (=> (= (= integer 4) tmp_bool2_fresh) (= (= result "4") tmp_bool2_fresh))))
 (let (($x614 (=> (= (= integer 3) tmp_bool2_fresh) (= (= result "3") tmp_bool2_fresh))))
 (let (($x638 (and $x614 (and $x617 (and $x620 (and $x623 (and $x626 (and $x629 $x632))))))))
 (let (($x611 (=> (= (= integer 2) tmp_bool2_fresh) (= (= result "2") tmp_bool2_fresh))))
 (let (($x608 (=> (= (= integer 1) tmp_bool2_fresh) (= (= result "1") tmp_bool2_fresh))))
 (let (($x605 (=> (= (= integer 0) tmp_bool2_fresh) (= (= result "0") tmp_bool2_fresh))))
 (let (($x644 (and (and $x605 (and $x608 (and $x611 $x638))) (=> $x102 (= $x108 tmp_bool2_fresh)))))
 (and (=> (< integer 0) (= (= result "") tmp_bool2_fresh)) $x644)))))))))))))))))))) :named a2))
(assert (! 
 (let ((?x15 (int.to.str integer)))
 (let (($x16 (= ?x15 result)))
 (not $x16))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;integer = NO VALUE
;result = NO VALUE
;tmp_str2 = NO VALUE
;tmp_bool2_fresh = true

;unsat core: a0 a1 a2 

