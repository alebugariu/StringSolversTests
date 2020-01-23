(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1 String) (t2_fresh String) (t2 String) (tmp_str3 String) (tmp_str5 String) )(let (($x1909 (=> (= (str.++ t1 t2_fresh) t) (= (= t2_fresh s) false))))
 (let (($x105 (= (str.contains t2 tmp_str3) false)))
 (let (($x536 (=> $x105 (= (str.replace t2 tmp_str3 tmp_str5) t2_fresh))))
 (=> (and $x536 (= (str.++ t1 t2_fresh) t)) (= (= t2_fresh s) false))))))
  :named a1))
(assert (! 
 (let (($x1473 (str.suffixof s t)))
 (let (($x1889 (= $x1473 false)))
 (not $x1889))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

;actual status: timeout
