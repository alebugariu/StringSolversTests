(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun s () String)
(assert (! 
 (forall ((s1_fresh String) (s2 String) (s3 String) (s1 String) )(! (let (($x208 (=> (= (str.++ (str.++ s1_fresh s2) s3) s) (= (= s2 t) false))))
 (=> (and (=> (= (str.len s1) 1) (= (str.at s1 0) s1_fresh)) (= (str.++ (str.++ s1_fresh s2) s3) s)) (= (= s2 t) false))) :pattern ( (str.++ (str.++ s1_fresh s2) s3) (str.at s1 0) )))
  :named a1))
(assert (! 
 (not (= (str.contains s t) false)) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

;actual status: timeout
