(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1 String) (t2_fresh String) (t2 String) (tmp_str3 String) (tmp_str5 String) )(let (($x307 (=> (= (str.++ t1 t2_fresh) t) (= (= t1 s) false))))
 (let (($x197 (= (str.contains t2 tmp_str3) false)))
 (=> (and (=> $x197 (= (str.replace t2 tmp_str3 tmp_str5) t2_fresh)) (= (str.++ t1 t2_fresh) t)) (= (= t1 s) false)))))
  :named a1))
(assert (! 
 (let (($x557 (str.prefixof s t)))
 (let (($x617 (= $x557 false)))
 (not $x617))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
