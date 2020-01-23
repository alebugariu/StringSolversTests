(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s_fresh () String)
(declare-fun t () String)
(declare-fun s () String)
(assert (! 
 (forall ((t1 String) (t2 String) )(let (($x720 (= (str.++ t1 t2) t)))
 (=> $x720 (= (= t2 s_fresh) false))))
  :named a1))
(assert (! 
 (let ((?x144 (str.len s)))
 (let (($x145 (= ?x144 1)))
 (let ((?x410 (str.at s 0)))
 (let (($x143 (= ?x410 s_fresh)))
 (and $x143 $x145))))) :named a2))
(assert (! 
 (let (($x1473 (str.suffixof s t)))
 (let (($x1889 (= $x1473 false)))
 (not $x1889))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unsat
