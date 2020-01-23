(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun result () Int)
(declare-fun s () String)
(assert
 (= (str.to.int s) result))
(check-sat)

(get-info :reason-unknown)

;s = 
;result = -1
;actual status: sat
