(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1_fresh String) (t2 String) (t1 String) )(! (=> (and (=> (= (str.len t1) 1) (= (str.at t1 0) t1_fresh)) (= (str.++ t1_fresh t2) t)) (= (= t1_fresh s) false)) :pattern ( (str.++ t1_fresh t2) (str.at t1 0) )))
  :named a1))
(assert (! 
 (not (= (str.prefixof s t) false)) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
