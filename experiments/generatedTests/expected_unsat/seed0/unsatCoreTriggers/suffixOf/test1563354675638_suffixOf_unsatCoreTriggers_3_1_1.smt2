(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun s_fresh () String)
(declare-fun t1 () String)
(declare-fun s () String)
(assert (! 
 (let ((?x1161 (str.++ t1 s_fresh)))
 (= ?x1161 t)) :named a1))
(assert (! 
 (let ((?x106 (str.++ s "")))
 (= ?x106 s_fresh)) :named a2))
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
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 

