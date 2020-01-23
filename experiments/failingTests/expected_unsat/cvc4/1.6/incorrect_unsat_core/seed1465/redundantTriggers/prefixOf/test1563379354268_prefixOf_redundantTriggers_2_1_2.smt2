(set-option :random-seed 1465)
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
 (let ((?x1645 (str.++ s t2_fresh)))
 (= ?x1645 t)) :named a2))
(assert (! 
 (let (($x1301 (str.prefixof s t)))
 (let (($x1302 (= $x1301 true)))
 (not $x1302))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t2 = NO VALUE
;t2_fresh = NO VALUE

;unsat core: a0 a2 

;actual status: incorrect_unsat_core
;(
;a1
;a2
;a0
;)
