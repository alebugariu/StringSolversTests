(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun s_fresh () String)
(declare-fun t () String)
(declare-fun t1 () String)
(assert (! 
 (let ((?x200 (str.len s)))
 (let (($x201 (= ?x200 1)))
 (let ((?x195 (str.at s 0)))
 (let (($x192 (= ?x195 s_fresh)))
 (and $x192 $x201))))) :named a1))
(assert (! 
 (= (str.++ t1 s_fresh) t) :named a2))
(assert (! 
 (let (($x464 (str.suffixof s t)))
 (let (($x465 (= $x464 true)))
 (not $x465))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t1 = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 

