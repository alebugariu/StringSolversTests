(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1 String) (t2_fresh String) (t2 String) (tmp_str3 String) (tmp_str5 String) )(! (let (($x646 (=> (= (str.++ t1 t2_fresh) t) (= (= t2_fresh s) false))))
 (let (($x292 (= (str.contains t2 tmp_str3) false)))
 (let (($x787 (=> $x292 (= (str.replace t2 tmp_str3 tmp_str5) t2_fresh))))
 (=> (and $x787 (= (str.++ t1 t2_fresh) t)) (= (= t2_fresh s) false))))) :pattern ( (str.++ t1 t2_fresh) (str.replace t2 tmp_str3 tmp_str5) )))
  :named a1))
(assert (! 
 (let (($x464 (str.suffixof s t)))
 (let (($x1946 (= $x464 false)))
 (not $x1946))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

;actual status: not_implemented
