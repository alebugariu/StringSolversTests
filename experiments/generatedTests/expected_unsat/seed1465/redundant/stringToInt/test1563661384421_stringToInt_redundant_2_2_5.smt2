(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str17 () String)
(declare-fun j () Int)
(declare-fun s () String)
(declare-fun tmp_str18 () String)
(declare-fun result () Int)
(assert (! 
 (let ((?x218 (str.at s j)))
 (let ((?x1797 (str.replace ?x218 tmp_str17 tmp_str18)))
 (let (($x1798 (= ?x1797 ?x218)))
 (and $x1798 (= (str.indexof ?x218 tmp_str17 0) (- 1)))))) :named a1))
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
 (let (($x212 (= s "")))
 (let (($x213 (= $x212 false)))
 (let (($x283 (and $x213 $x282)))
 (ite $x283 $x285 $x206))))))))) :named a2))
(assert (! 
 (let ((?x209 (str.to.int s)))
 (let (($x210 (= ?x209 result)))
 (not $x210))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;result = NO VALUE
;j = NO VALUE
;tmp_str17 = NO VALUE
;tmp_str18 = NO VALUE

;unsat core: a0 a2 

