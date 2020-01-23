(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun t2 () String)
(declare-fun s_fresh () String)
(declare-fun s () String)
(assert (! 
 (= (str.++ s_fresh t2) t) :named a1))
(assert (! 
 (let ((?x115 (str.len s)))
 (let (($x102 (= ?x115 1)))
 (let ((?x1850 (str.at s 0)))
 (let (($x1852 (= ?x1850 s_fresh)))
 (and $x1852 $x102))))) :named a2))
(assert (! 
 (not (= (str.prefixof s t) true)) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s_fresh = NO VALUE
;t2 = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unsat
