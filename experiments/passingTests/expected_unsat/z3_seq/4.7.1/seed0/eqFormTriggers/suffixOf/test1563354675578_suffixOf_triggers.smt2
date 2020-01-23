(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun s () String)
(declare-fun t1 () String)
(assert (! 
 (= (str.++ t1 s) t) :named a1))
(assert (! 
 (not (= (str.suffixof s t) true)) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t1 = NO VALUE

;unsat core: a0 a1 

;actual status: unsat
