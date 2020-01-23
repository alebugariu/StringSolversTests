(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun s () String)
(assert (! 
 (forall ((s1 String) (s2_fresh String) (s3 String) (s2 String) (tmp_str4 String) (tmp_str6 String) )(let (($x190 (=> (= (str.++ (str.++ s1 s2_fresh) s3) s) (= (= s2_fresh t) false))))
 (let (($x1312 (=> (= (str.contains s2 tmp_str4) false) (= (str.replace s2 tmp_str4 tmp_str6) s2_fresh))))
 (=> (and $x1312 (= (str.++ (str.++ s1 s2_fresh) s3) s)) (= (= s2_fresh t) false)))))
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

;actual status: not_implemented
