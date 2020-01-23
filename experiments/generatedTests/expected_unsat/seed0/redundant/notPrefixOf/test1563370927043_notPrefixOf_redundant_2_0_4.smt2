(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1_fresh String) (t2 String) (t1 String) (tmp_str3 String) (tmp_str5 String) )(let (($x105 (= (str.contains t1 tmp_str3) false)))
 (=> (and (=> $x105 (= (str.replace t1 tmp_str3 tmp_str5) t1_fresh)) (= (str.++ t1_fresh t2) t)) (= (= t1_fresh s) false))))
  :named a1))
(assert (! 
 (let (($x991 (str.prefixof s t)))
 (let (($x1806 (= $x991 false)))
 (not $x1806))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

