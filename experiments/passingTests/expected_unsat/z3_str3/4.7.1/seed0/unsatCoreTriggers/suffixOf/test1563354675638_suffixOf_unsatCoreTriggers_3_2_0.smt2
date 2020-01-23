(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun t_fresh () String)
(declare-fun s () String)
(declare-fun t1 () String)
(assert (! 
 (let ((?x1031 (str.len t)))
 (let (($x1032 (= ?x1031 1)))
 (let ((?x1379 (str.at t 0)))
 (let (($x1381 (= ?x1379 t_fresh)))
 (and $x1381 $x1032))))) :named a1))
(assert (! 
 (let ((?x373 (str.++ t1 s)))
 (= ?x373 t_fresh)) :named a2))
(assert (! 
 (let (($x1736 (str.suffixof s t)))
 (let (($x1737 (= $x1736 true)))
 (not $x1737))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t1 = NO VALUE
;t_fresh = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unsat
