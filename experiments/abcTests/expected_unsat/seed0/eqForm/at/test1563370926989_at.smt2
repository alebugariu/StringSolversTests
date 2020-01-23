(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () String)
(declare-fun offset () Int)
(declare-fun s () String)
(assert  
 (not (= (str.at s offset) result)))
(assert  
 (= (str.substr s offset 1) result))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;result = NO VALUE

;unsat core: a0 a1 
