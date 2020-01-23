(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1 String) (t2_fresh String) (t2 String) (tmp_str3 String) (tmp_str5 String) )(let (($x1706 (=> (= (str.++ t1 t2_fresh) t) (= (= t2_fresh s) false))))
 (let (($x197 (= (str.contains t2 tmp_str3) false)))
 (let (($x1680 (=> $x197 (= (str.replace t2 tmp_str3 tmp_str5) t2_fresh))))
 (=> (and $x1680 (= (str.++ t1 t2_fresh) t)) (= (= t2_fresh s) false))))))
  :named a1))
(assert (! 
 (let (($x1144 (str.suffixof s t)))
 (let (($x562 (= $x1144 false)))
 (not $x562))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

;actual status: sat
;(error "line 18 column 10: check annotation that says unsat")
