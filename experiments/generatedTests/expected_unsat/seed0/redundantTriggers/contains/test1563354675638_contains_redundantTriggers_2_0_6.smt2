(set-option :random-seed 0)
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
 (let ((?x2471 (str.++ s1_fresh t)))
 (let ((?x2472 (str.++ ?x2471 s3)))
 (= ?x2472 s))) :named a1))
(assert (! 
 (let ((?x128 (str.len s1)))
 (let ((?x1058 (str.substr s1 0 ?x128)))
 (= ?x1058 s1_fresh))) :named a2))
(assert (! 
 (let (($x326 (str.contains s t)))
 (let (($x327 (= $x326 true)))
 (not $x327))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s1_fresh = NO VALUE
;s3 = NO VALUE
;s1 = NO VALUE

;unsat core: a0 a1 

