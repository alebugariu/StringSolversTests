(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun s () String)
(assert (! 
 (forall ((s1 String) (s2 String) (s3_fresh String) (s3 String) )(let (($x520 (=> (= (str.++ (str.++ s1 s2) s3_fresh) s) (= (= s2 t) false))))
 (=> (and (= (str.substr s3 0 (str.len s3)) s3_fresh) (= (str.++ (str.++ s1 s2) s3_fresh) s)) (= (= s2 t) false))))
  :named a1))
(assert (! 
 (let (($x1059 (str.contains s t)))
 (let (($x245 (= $x1059 false)))
 (not $x245))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
