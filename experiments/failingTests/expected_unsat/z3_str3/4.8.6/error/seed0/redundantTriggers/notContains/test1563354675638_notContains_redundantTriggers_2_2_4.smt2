(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun s () String)
(assert (! 
 (forall ((s1 String) (s2 String) (s3_fresh String) (s3 String) (tmp_str4 String) (tmp_str6 String) )(! (let (($x23 (=> (= (str.++ (str.++ s1 s2) s3_fresh) s) (= (= s2 t) false))))
 (let (($x241 (= (str.contains s3 tmp_str4) false)))
 (=> (and (=> $x241 (= (str.replace s3 tmp_str4 tmp_str6) s3_fresh)) (= (str.++ (str.++ s1 s2) s3_fresh) s)) (= (= s2 t) false)))) :pattern ( (str.++ (str.++ s1 s2) s3_fresh) (str.replace s3 tmp_str4 tmp_str6) )))
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

;actual status: not_implemented
