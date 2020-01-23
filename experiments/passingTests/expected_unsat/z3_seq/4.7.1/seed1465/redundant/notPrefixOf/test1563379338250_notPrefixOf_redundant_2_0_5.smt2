(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1_fresh String) (t2 String) (t1 String) (tmp_str3 String) (tmp_str6 String) )(let (($x838 (= (str.indexof t1 tmp_str3 0) (- 1))))
 (=> (and (=> $x838 (= (str.replace t1 tmp_str3 tmp_str6) t1_fresh)) (= (str.++ t1_fresh t2) t)) (= (= t1_fresh s) false))))
  :named a1))
(assert (! 
 (let (($x557 (str.prefixof s t)))
 (let (($x617 (= $x557 false)))
 (not $x617))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

;actual status: unsat
