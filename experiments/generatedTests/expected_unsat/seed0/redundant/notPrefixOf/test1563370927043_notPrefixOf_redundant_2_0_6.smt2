(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1_fresh String) (t2 String) (t1 String) )(let (($x1304 (=> (= (str.++ t1_fresh t2) t) (= (= t1_fresh s) false))))
 (=> (and (= (str.substr t1 0 (str.len t1)) t1_fresh) (= (str.++ t1_fresh t2) t)) (= (= t1_fresh s) false))))
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

