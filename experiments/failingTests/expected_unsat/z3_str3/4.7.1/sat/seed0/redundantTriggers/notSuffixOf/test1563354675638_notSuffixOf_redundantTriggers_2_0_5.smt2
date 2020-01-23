(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1_fresh String) (t2 String) (t1 String) (tmp_str3 String) (tmp_str6 String) )(! (let (($x35 (= (str.indexof t1 tmp_str3 0) (- 1))))
 (let (($x1607 (=> $x35 (= (str.replace t1 tmp_str3 tmp_str6) t1_fresh))))
 (=> (and $x1607 (= (str.++ t1_fresh t2) t)) (= (= t2 s) false)))) :pattern ( (str.++ t1_fresh t2) (str.replace t1 tmp_str3 tmp_str6) )))
  :named a1))
(assert (! 
 (let (($x1736 (str.suffixof s t)))
 (let (($x1784 (= $x1736 false)))
 (not $x1784))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

;actual status: sat
;(error "line 17 column 10: check annotation that says unsat")
