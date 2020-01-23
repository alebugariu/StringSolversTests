(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun result () String)
(declare-fun integer () Int)
(assert
 (= (int.to.str integer) result))
(check-sat)

(get-info :reason-unknown)

;integer = -1
;result = 
;actual status: sat
