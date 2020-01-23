(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () Int)
(declare-fun s () String)
(assert (! 
 (let (($x205 (= result (- 1))))
 (let (($x206 (= $x205 true)))
 (let ((?x284 (int.to.str result)))
 (let (($x285 (= ?x284 s)))
 (let (($x1783 (forall ((j_fresh Int) (j Int) (tmp_str18 String) )(let (($x1754 (or (= (= (str.at s j_fresh) "8") true) (= (= (str.at s j_fresh) "9") true))))
 (let (($x1760 (or (= (= (str.at s j_fresh) "6") true) (or (= (= (str.at s j_fresh) "7") true) $x1754))))
 (let (($x1766 (or (= (= (str.at s j_fresh) "4") true) (or (= (= (str.at s j_fresh) "5") true) $x1760))))
 (let (($x1772 (or (= (= (str.at s j_fresh) "2") true) (or (= (= (str.at s j_fresh) "3") true) $x1766))))
 (let (($x1778 (or (= (= (str.at s j_fresh) "0") true) (or (= (= (str.at s j_fresh) "1") true) $x1772))))
 (let (($x1434 (=> (and (>= j 0) (<= j (str.len tmp_str18))) (= (str.indexof tmp_str18 "" j) j_fresh))))
 (=> (and $x1434 (and (>= j_fresh 0) (< j_fresh (str.len s)))) $x1778))))))))
 ))
 (let (($x212 (= s "")))
 (let (($x213 (= $x212 false)))
 (ite (and $x213 $x1783) $x285 $x206)))))))) :named a1))
(assert (! 
 (let ((?x209 (str.to.int s)))
 (let (($x210 (= ?x209 result)))
 (not $x210))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;result = NO VALUE

;unsat core: a0 a1 

