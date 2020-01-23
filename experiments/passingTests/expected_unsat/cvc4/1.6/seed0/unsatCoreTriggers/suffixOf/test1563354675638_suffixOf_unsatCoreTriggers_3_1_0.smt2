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
 (let ((?x115 (str.len s)))
 (let (($x102 (= ?x115 1)))
 (let ((?x1850 (str.at s 0)))
 (let (($x1852 (= ?x1850 s_fresh)))
 (and $x1852 $x102))))) :named a1))
(assert (! 
 (= (str.++ t1 s_fresh) t) :named a2))
(assert (! 
 (let (($x1736 (str.suffixof s t)))
 (let (($x1737 (= $x1736 true)))
 (not $x1737))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t1 = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unsat
