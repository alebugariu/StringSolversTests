(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1 String) (t2_fresh String) (t2 String) (tmp_str3 String) (tmp_str6 String) )(! (let (($x964 (=> (= (str.++ t1 t2_fresh) t) (= (= t1 s) false))))
 (let (($x35 (= (str.indexof t2 tmp_str3 0) (- 1))))
 (=> (and (=> $x35 (= (str.replace t2 tmp_str3 tmp_str6) t2_fresh)) (= (str.++ t1 t2_fresh) t)) (= (= t1 s) false)))) :pattern ( (str.++ t1 t2_fresh) (str.replace t2 tmp_str3 tmp_str6) )))
  :named a1))
(assert (! 
 (let (($x1036 (str.prefixof s t)))
 (let (($x1144 (= $x1036 false)))
 (not $x1144))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

;actual status: unsat
