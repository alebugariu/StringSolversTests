(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun s3_fresh () String)
(declare-fun t () String)
(declare-fun s1 () String)
(declare-fun s3 () String)
(assert (! 
 (let ((?x329 (str.++ s1 t)))
 (let ((?x2493 (str.++ ?x329 s3_fresh)))
 (= ?x2493 s))) :named a1))
(assert (! 
 (let ((?x1105 (str.++ s3 "")))
 (= ?x1105 s3_fresh)) :named a2))
(assert (! 
 (let (($x326 (str.contains s t)))
 (let (($x327 (= $x326 true)))
 (not $x327))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s1 = NO VALUE
;s3_fresh = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a1 

;actual status: incorrect_unsat_core
;(a1 a2 a0)
