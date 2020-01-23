(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1 String) (t2_fresh String) (t2 String) (tmp_str3 String) (tmp_str6 String) )(let (($x1706 (=> (= (str.++ t1 t2_fresh) t) (= (= t2_fresh s) false))))
 (let (($x838 (= (str.indexof t2 tmp_str3 0) (- 1))))
 (let (($x1690 (=> $x838 (= (str.replace t2 tmp_str3 tmp_str6) t2_fresh))))
 (=> (and $x1690 (= (str.++ t1 t2_fresh) t)) (= (= t2_fresh s) false))))))
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

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
