(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t_fresh () String)
(declare-fun t2 () String)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (let ((?x352 (str.++ s t2)))
 (= ?x352 t_fresh)) :named a1))
(assert (! 
 (let ((?x1031 (str.len t)))
 (let ((?x2062 (str.substr t 0 ?x1031)))
 (= ?x2062 t_fresh))) :named a2))
(assert (! 
 (let (($x1036 (str.prefixof s t)))
 (let (($x1040 (= $x1036 true)))
 (not $x1040))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t2 = NO VALUE
;t_fresh = NO VALUE

;unsat core: a0 a1 a2 

;actual status: timeout
