(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1_fresh String) (t2 String) (t1 String) )(! (let (($x807 (=> (= (str.++ t1_fresh t2) t) (= (= t1_fresh s) false))))
 (=> (and (= (str.++ "" t1) t1_fresh) (= (str.++ t1_fresh t2) t)) (= (= t1_fresh s) false))) :pattern ( (str.++ t1_fresh t2) (str.++ "" t1) )))
  :named a1))
(assert (! 
 (let (($x1301 (str.prefixof s t)))
 (let (($x523 (= $x1301 false)))
 (not $x523))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

;actual status: not_implemented
