(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun t () String)
(declare-fun s1_fresh () String)
(declare-fun s1 () String)
(assert (! 
 (let ((?x2466 (str.++ s1_fresh t)))
 (let ((?x2467 (str.++ ?x2466 s3)))
 (= ?x2467 s))) :named a1))
(assert (! 
 (let ((?x128 (str.len s1)))
 (let ((?x1056 (str.substr s1 0 ?x128)))
 (= ?x1056 s1_fresh))) :named a2))
(assert (! 
 (let (($x322 (str.contains s t)))
 (let (($x323 (= $x322 true)))
 (not $x323))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s1_fresh = NO VALUE
;s3 = NO VALUE
;s1 = NO VALUE

;unsat core: a0 a1 

