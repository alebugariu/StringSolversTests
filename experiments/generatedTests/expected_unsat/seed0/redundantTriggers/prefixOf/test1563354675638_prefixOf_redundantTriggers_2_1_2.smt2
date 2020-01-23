(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t2_fresh () String)
(declare-fun t2 () String)
(declare-fun t () String)
(declare-fun s () String)
(assert (! 
 (= (str.++ "" t2) t2_fresh) :named a1))
(assert (! 
 (let ((?x1697 (str.++ s t2_fresh)))
 (= ?x1697 t)) :named a2))
(assert (! 
 (let (($x1036 (str.prefixof s t)))
 (let (($x1040 (= $x1036 true)))
 (not $x1040))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t2 = NO VALUE
;t2_fresh = NO VALUE

;unsat core: a0 a2 

