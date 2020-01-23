(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun s () String)
(assert (! 
 (forall ((s1 String) (s2_fresh String) (s3 String) (s2 String) )(let (($x1059 (=> (= (str.++ (str.++ s1 s2_fresh) s3) s) (= (= s2_fresh t) false))))
 (=> (and (= (str.replace s2 s2 s2) s2_fresh) (= (str.++ (str.++ s1 s2_fresh) s3) s)) (= (= s2_fresh t) false))))
  :named a1))
(assert (! 
 (let (($x146 (str.contains s t)))
 (let (($x1678 (= $x146 false)))
 (not $x1678))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

;actual status: unsat
