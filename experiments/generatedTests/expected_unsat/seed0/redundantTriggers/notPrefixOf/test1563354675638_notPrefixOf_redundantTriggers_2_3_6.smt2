(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t2 () String)
(declare-fun t1 () String)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (let ((?x357 (str.++ t1 t2)))
 (= (str.substr ?x357 0 (str.len ?x357)) ?x357)) :named a1))
(assert (! 
 (forall ((t1 String) (t2 String) )(! (=> (= (str.++ t1 t2) t) (= (= t1 s) false)) :pattern ( (str.++ t1 t2) )))
  :named a2))
(assert (! 
 (let (($x1036 (str.prefixof s t)))
 (let (($x1144 (= $x1036 false)))
 (not $x1144))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t1 = NO VALUE
;t2 = NO VALUE

;unsat core: a0 a2 

