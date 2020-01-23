(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun s () String)
(assert (! 
 (forall ((s1 String) (s2 String) (s3 String) )(! (=> (= (str.++ (str.++ s1 s2) s3) s) (= (= s2 t) false)) :pattern ( (str.++ (str.++ s1 s2) s3) )))
  :named a1))
(assert (! 
 (not (= (str.contains s t) false)) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

