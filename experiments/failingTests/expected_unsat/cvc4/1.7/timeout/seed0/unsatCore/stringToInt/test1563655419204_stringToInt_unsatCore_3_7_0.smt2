(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_int5 () Int)
(declare-fun tmp_str5_fresh () String)
(declare-fun result () Int)
(declare-fun s () String)
(assert (! 
 (and (= (int.to.str tmp_int5) tmp_str5_fresh) (= (= tmp_int5 0) true)) :named a1))
(assert (! 
 (let (($x205 (= result (- 1))))
 (let (($x206 (= $x205 true)))
 (let ((?x284 (int.to.str result)))
 (let (($x285 (= ?x284 s)))
 (let (($x1887 (forall ((j Int) )(let (($x254 (or (= (= (str.at s j) "8") true) (= (= (str.at s j) "9") true))))
 (let (($x260 (or (= (= (str.at s j) "6") true) (or (= (= (str.at s j) "7") true) $x254))))
 (let (($x266 (or (= (= (str.at s j) "4") true) (or (= (= (str.at s j) "5") true) $x260))))
 (let (($x272 (or (= (= (str.at s j) "2") true) (or (= (= (str.at s j) "3") true) $x266))))
 (let (($x1885 (or (= (= (str.at s j) tmp_str5_fresh) true) (or (= (= (str.at s j) "1") true) $x272))))
 (=> (and (>= j 0) (< j (str.len s))) $x1885)))))))
 ))
 (let (($x212 (= s "")))
 (let (($x213 (= $x212 false)))
 (ite (and $x213 $x1887) $x285 $x206)))))))) :named a2))
(assert (! 
 (let ((?x209 (str.to.int s)))
 (let (($x210 (= ?x209 result)))
 (not $x210))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;result = NO VALUE
;tmp_int5 = NO VALUE
;tmp_str5_fresh = 0

;unsat core: a0 a1 a2 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
