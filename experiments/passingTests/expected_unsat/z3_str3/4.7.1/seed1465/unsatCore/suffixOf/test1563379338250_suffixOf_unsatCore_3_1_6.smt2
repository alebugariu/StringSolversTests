(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s_fresh () String)
(declare-fun s () String)
(declare-fun t () String)
(declare-fun t1 () String)
(assert (! 
 (let ((?x2295 (str.len s)))
 (let ((?x243 (str.substr s 0 ?x2295)))
 (= ?x243 s_fresh))) :named a1))
(assert (! 
 (let ((?x1665 (str.++ t1 s_fresh)))
 (= ?x1665 t)) :named a2))
(assert (! 
 (let (($x1144 (str.suffixof s t)))
 (let (($x2431 (= $x1144 true)))
 (not $x2431))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s_fresh = NO VALUE
;t1 = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unsat
