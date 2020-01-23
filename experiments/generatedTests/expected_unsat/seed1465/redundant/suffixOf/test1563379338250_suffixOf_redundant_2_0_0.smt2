(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t1 () String)
(declare-fun t1_fresh () String)
(declare-fun t () String)
(declare-fun s () String)
(assert (! 
 (let ((?x1096 (str.len t1)))
 (let (($x1097 (= ?x1096 1)))
 (let ((?x1098 (str.at t1 0)))
 (let (($x1099 (= ?x1098 t1_fresh)))
 (and $x1099 $x1097))))) :named a1))
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

