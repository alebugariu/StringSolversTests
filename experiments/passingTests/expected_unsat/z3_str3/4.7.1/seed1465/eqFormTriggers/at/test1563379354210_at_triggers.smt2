(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () String)
(declare-fun offset () Int)
(declare-fun s () String)
(assert (! 
 (= (str.substr s offset 1) result) :named a1))
(assert (! 
 (not (= (str.at s offset) result)) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;result = NO VALUE

;unsat core: a0 a1 

;actual status: unsat
