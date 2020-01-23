(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun t () String)
(declare-fun s () String)
(declare-fun result () Bool)
(assert
 (= (= s t) result))
(check-sat)

(get-value (s t result ))
(get-info :reason-unknown)

;s = 
;t = 
;result = true


