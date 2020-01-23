(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str17 () String)
(declare-fun result () Int)
(declare-fun result_fresh () Int)
(declare-fun s () String)
(assert (! 
 (and (= (str.indexof tmp_str17 "" result) result_fresh) (and (>= result 0) (<= result (str.len tmp_str17)))) :named a1))
(assert (! 
 (let (($x1338 (= result_fresh (- 1))))
 (let (($x1339 (= $x1338 true)))
 (let (($x286 (forall ((j Int) )(! (let (($x258 (or (= (= (str.at s j) "8") true) (= (= (str.at s j) "9") true))))
 (let (($x264 (or (= (= (str.at s j) "6") true) (or (= (= (str.at s j) "7") true) $x258))))
 (let (($x270 (or (= (= (str.at s j) "4") true) (or (= (= (str.at s j) "5") true) $x264))))
 (let (($x276 (or (= (= (str.at s j) "2") true) (or (= (= (str.at s j) "3") true) $x270))))
 (let (($x282 (or (= (= (str.at s j) "0") true) (or (= (= (str.at s j) "1") true) $x276))))
 (=> (and (>= j 0) (< j (str.len s))) $x282)))))) :pattern ( (str.at s j) )))
 ))
 (let (($x214 (= s "")))
 (let (($x215 (= $x214 false)))
 (let (($x287 (and $x215 $x286)))
 (ite $x287 (= (int.to.str result_fresh) s) $x1339))))))) :named a2))
(assert (! 
 (let ((?x211 (str.to.int s)))
 (let (($x212 (= ?x211 result)))
 (not $x212))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;result = NO VALUE
;tmp_str17 = NO VALUE
;result_fresh = NO VALUE

;unsat core: a0 a1 a2 

;actual status: timeout
