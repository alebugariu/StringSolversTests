(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1_fresh String) (t2 String) (t1 String) (tmp_str3 String) (tmp_str5 String) )(! (let (($x241 (= (str.contains t1 tmp_str3) false)))
 (=> (and (=> $x241 (= (str.replace t1 tmp_str3 tmp_str5) t1_fresh)) (= (str.++ t1_fresh t2) t)) (= (= t1_fresh s) false))) :pattern ( (str.++ t1_fresh t2) (str.replace t1 tmp_str3 tmp_str5) )))
  :named a1))
(assert (! 
 (let (($x1036 (str.prefixof s t)))
 (let (($x1144 (= $x1036 false)))
 (not $x1144))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
