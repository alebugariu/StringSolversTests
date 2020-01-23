(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun t () String)
(declare-fun s () String)
(declare-fun result () Bool)
(assert
 (= (str.suffixof s t) result))
(check-sat)

(get-info :reason-unknown)

;s = 
;t = 
;result = true
;actual status: sat
