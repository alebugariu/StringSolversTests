(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun s () String)
(assert (! 
 (forall ((s1 String) (s2 String) (s3_fresh String) (s3 String) (tmp_str4 String) (tmp_str6 String) )(let (($x1436 (=> (= (str.++ (str.++ s1 s2) s3_fresh) s) (= (= s2 t) false))))
 (let (($x105 (= (str.contains s3 tmp_str4) false)))
 (=> (and (=> $x105 (= (str.replace s3 tmp_str4 tmp_str6) s3_fresh)) (= (str.++ (str.++ s1 s2) s3_fresh) s)) (= (= s2 t) false)))))
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

