(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t2 () String)
(declare-fun t1 () String)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (let ((?x357 (str.++ t1 t2)))
 (let ((?x2441 (str.len ?x357)))
 (let (($x391 (= ?x2441 1)))
 (let ((?x2439 (str.at ?x357 0)))
 (let (($x2440 (= ?x2439 ?x357)))
 (and $x2440 $x391)))))) :named a1))
(assert (! 
 (forall ((t1 String) (t2 String) )(! (let (($x1421 (= (str.++ t1 t2) t)))
 (=> $x1421 (= (= t2 s) false))) :pattern ( (str.++ t1 t2) )))
  :named a2))
(assert (! 
 (let (($x464 (str.suffixof s t)))
 (let (($x1946 (= $x464 false)))
 (not $x1946))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t1 = NO VALUE
;t2 = NO VALUE

;unsat core: a0 a2 

