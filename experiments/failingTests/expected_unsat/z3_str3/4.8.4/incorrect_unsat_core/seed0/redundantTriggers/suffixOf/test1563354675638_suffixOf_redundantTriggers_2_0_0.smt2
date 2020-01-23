(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t1 () String)
(declare-fun t1_fresh () String)
(declare-fun t () String)
(declare-fun s () String)
(assert (! 
 (let ((?x1058 (str.len t1)))
 (let (($x1059 (= ?x1058 1)))
 (let ((?x143 (str.at t1 0)))
 (let (($x144 (= ?x143 t1_fresh)))
 (and $x144 $x1059))))) :named a1))
(assert (! 
 (= (str.++ t1_fresh s) t) :named a2))
(assert (! 
 (not (= (str.suffixof s t) true)) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t1 = NO VALUE
;t1_fresh = NO VALUE

;unsat core: a0 a2 

;actual status: incorrect_unsat_core
;(a0 a2 a1)
