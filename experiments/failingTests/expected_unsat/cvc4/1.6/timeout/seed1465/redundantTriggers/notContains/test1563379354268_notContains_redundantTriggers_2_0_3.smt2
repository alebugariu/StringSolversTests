(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun s () String)
(assert (! 
 (forall ((s1_fresh String) (s2 String) (s3 String) (s1 String) )(! (let (($x241 (=> (= (str.++ (str.++ s1_fresh s2) s3) s) (= (= s2 t) false))))
 (=> (and (= (str.replace s1 s1 s1) s1_fresh) (= (str.++ (str.++ s1_fresh s2) s3) s)) (= (= s2 t) false))) :pattern ( (str.++ (str.++ s1_fresh s2) s3) (str.replace s1 s1 s1) )))
  :named a1))
(assert (! 
 (let (($x326 (str.contains s t)))
 (let (($x1677 (= $x326 false)))
 (not $x1677))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
