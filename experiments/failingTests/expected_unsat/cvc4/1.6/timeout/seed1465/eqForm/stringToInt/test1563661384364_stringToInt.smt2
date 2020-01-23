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
 (let (($x282 (forall ((j Int) )(let (($x254 (or (= (= (str.at s j) "8") true) (= (= (str.at s j) "9") true))))
 (let (($x260 (or (= (= (str.at s j) "6") true) (or (= (= (str.at s j) "7") true) $x254))))
 (let (($x266 (or (= (= (str.at s j) "4") true) (or (= (= (str.at s j) "5") true) $x260))))
 (let (($x272 (or (= (= (str.at s j) "2") true) (or (= (= (str.at s j) "3") true) $x266))))
 (let (($x278 (or (= (= (str.at s j) "0") true) (or (= (= (str.at s j) "1") true) $x272))))
 (=> (and (>= j 0) (< j (str.len s))) $x278)))))))
 ))
 (ite (and (= (= s "") false) $x282) (= (int.to.str result) s) $x206)))) :named a1))
(assert (! 
 (not (= (str.to.int s) result)) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;result = NO VALUE

;unsat core: a0 a1 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
