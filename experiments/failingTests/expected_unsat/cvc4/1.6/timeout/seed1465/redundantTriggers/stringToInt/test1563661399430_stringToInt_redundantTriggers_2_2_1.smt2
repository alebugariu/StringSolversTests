(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun j () Int)
(declare-fun s () String)
(declare-fun result () Int)
(assert (! 
 (let ((?x220 (str.at s j)))
 (= (str.++ ?x220 "") ?x220)) :named a1))
(assert (! 
 (let (($x207 (= result (- 1))))
 (let (($x208 (= $x207 true)))
 (let ((?x288 (int.to.str result)))
 (let (($x289 (= ?x288 s)))
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
 (ite $x287 $x289 $x208))))))))) :named a2))
(assert (! 
 (let ((?x211 (str.to.int s)))
 (let (($x212 (= ?x211 result)))
 (not $x212))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;result = NO VALUE
;j = NO VALUE

;unsat core: a0 a2 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
