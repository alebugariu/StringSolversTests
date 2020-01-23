(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s_fresh () String)
(declare-fun s3 () String)
(declare-fun t () String)
(declare-fun s1 () String)
(declare-fun s () String)
(assert (! 
 (let ((?x325 (str.++ s1 t)))
 (let ((?x2298 (str.++ ?x325 s3)))
 (= ?x2298 s_fresh))) :named a1))
(assert (! 
 (= (str.substr s 0 (str.len s)) s_fresh) :named a2))
(assert (! 
 (let (($x1059 (str.contains s t)))
 (let (($x1224 (= $x1059 true)))
 (not $x1224))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s1 = NO VALUE
;s3 = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unsat
