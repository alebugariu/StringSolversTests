(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1 String) (t2_fresh String) (t2 String) )(! (let (($x211 (=> (= (str.++ t1 t2_fresh) t) (= (= t2_fresh s) false))))
 (let ((?x482 (str.++ "" t2)))
 (let (($x1030 (= ?x482 t2_fresh)))
 (=> (and $x1030 (= (str.++ t1 t2_fresh) t)) (= (= t2_fresh s) false))))) :pattern ( (str.++ t1 t2_fresh) (str.++ "" t2) )))
  :named a1))
(assert (! 
 (let (($x464 (str.suffixof s t)))
 (let (($x1946 (= $x464 false)))
 (not $x1946))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

;actual status: not_implemented
