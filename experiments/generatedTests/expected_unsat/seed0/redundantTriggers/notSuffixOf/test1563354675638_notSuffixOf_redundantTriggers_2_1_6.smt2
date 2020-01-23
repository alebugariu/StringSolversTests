(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1 String) (t2_fresh String) (t2 String) )(! (let (($x652 (=> (= (str.++ t1 t2_fresh) t) (= (= t2_fresh s) false))))
 (let ((?x70 (str.substr t2 0 (str.len t2))))
 (let (($x1221 (= ?x70 t2_fresh)))
 (=> (and $x1221 (= (str.++ t1 t2_fresh) t)) (= (= t2_fresh s) false))))) :pattern ( (str.++ t1 t2_fresh) (str.substr t2 0 (str.len t2)) )))
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

