(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun s_fresh () String)
(declare-fun t () String)
(declare-fun t1 () String)
(assert (! 
 (let ((?x144 (str.len s)))
 (let (($x145 (= ?x144 1)))
 (let ((?x410 (str.at s 0)))
 (let (($x143 (= ?x410 s_fresh)))
 (and $x143 $x145))))) :named a1))
(assert (! 
 (= (str.++ t1 s_fresh) t) :named a2))
(assert (! 
 (let (($x1473 (str.suffixof s t)))
 (let (($x1478 (= $x1473 true)))
 (not $x1478))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t1 = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 

