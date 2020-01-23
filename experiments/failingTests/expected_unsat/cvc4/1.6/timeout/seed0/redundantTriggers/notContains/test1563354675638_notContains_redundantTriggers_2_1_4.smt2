(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun s () String)
(assert (! 
 (forall ((s1 String) (s2_fresh String) (s3 String) (s2 String) (tmp_str4 String) (tmp_str6 String) )(! (let (($x23 (=> (= (str.++ (str.++ s1 s2_fresh) s3) s) (= (= s2_fresh t) false))))
 (let (($x249 (=> (= (str.contains s2 tmp_str4) false) (= (str.replace s2 tmp_str4 tmp_str6) s2_fresh))))
 (=> (and $x249 (= (str.++ (str.++ s1 s2_fresh) s3) s)) (= (= s2_fresh t) false)))) :pattern ( (str.++ (str.++ s1 s2_fresh) s3) (str.replace s2 tmp_str4 tmp_str6) )))
  :named a1))
(assert (! 
 (let (($x1097 (str.contains s t)))
 (let (($x190 (= $x1097 false)))
 (not $x190))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
