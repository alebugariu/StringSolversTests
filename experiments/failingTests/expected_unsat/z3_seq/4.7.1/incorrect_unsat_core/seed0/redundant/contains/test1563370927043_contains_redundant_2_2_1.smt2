(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s3_fresh () String)
(declare-fun s3 () String)
(declare-fun s () String)
(declare-fun t () String)
(declare-fun s1 () String)
(assert (! 
 (let ((?x1103 (str.++ s3 "")))
 (= ?x1103 s3_fresh)) :named a1))
(assert (! 
 (let ((?x325 (str.++ s1 t)))
 (let ((?x2488 (str.++ ?x325 s3_fresh)))
 (= ?x2488 s))) :named a2))
(assert (! 
 (let (($x322 (str.contains s t)))
 (let (($x323 (= $x322 true)))
 (not $x323))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s3 = NO VALUE
;s3_fresh = NO VALUE
;s1 = NO VALUE

;unsat core: a0 a2 

;actual status: incorrect_unsat_core
;(a1 a2 a0)
