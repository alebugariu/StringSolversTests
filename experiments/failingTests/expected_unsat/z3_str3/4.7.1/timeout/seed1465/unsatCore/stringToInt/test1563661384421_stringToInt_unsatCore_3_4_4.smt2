(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_int19 () Int)
(declare-fun tmp_str17 () String)
(declare-fun tmp_int18 () Int)
(declare-fun empty_fresh () String)
(declare-fun result () Int)
(declare-fun s () String)
(assert (! 
 (let ((?x1809 (str.len tmp_str17)))
 (let (($x1820 (>= tmp_int18 ?x1809)))
 (let (($x1819 (< tmp_int18 0)))
 (let (($x1821 (or $x1819 $x1820)))
 (and (= (str.substr tmp_str17 tmp_int18 tmp_int19) empty_fresh) (or $x1821 (<= tmp_int19 0))))))) :named a1))
(assert (! 
 (let (($x205 (= result (- 1))))
 (let (($x206 (= $x205 true)))
 (let ((?x284 (int.to.str result)))
 (let (($x285 (= ?x284 s)))
 (let (($x282 (forall ((j Int) )(let (($x254 (or (= (= (str.at s j) "8") true) (= (= (str.at s j) "9") true))))
 (let (($x260 (or (= (= (str.at s j) "6") true) (or (= (= (str.at s j) "7") true) $x254))))
 (let (($x266 (or (= (= (str.at s j) "4") true) (or (= (= (str.at s j) "5") true) $x260))))
 (let (($x272 (or (= (= (str.at s j) "2") true) (or (= (= (str.at s j) "3") true) $x266))))
 (let (($x278 (or (= (= (str.at s j) "0") true) (or (= (= (str.at s j) "1") true) $x272))))
 (=> (and (>= j 0) (< j (str.len s))) $x278)))))))
 ))
 (let (($x1823 (= s empty_fresh)))
 (let (($x1824 (= $x1823 false)))
 (let (($x1825 (and $x1824 $x282)))
 (ite $x1825 $x285 $x206))))))))) :named a2))
(assert (! 
 (let ((?x209 (str.to.int s)))
 (let (($x210 (= ?x209 result)))
 (not $x210))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;result = NO VALUE
;tmp_str17 = NO VALUE
;tmp_int18 = NO VALUE
;tmp_int19 = NO VALUE
;empty_fresh = 

;unsat core: a0 a1 a2 

;actual status: timeout
