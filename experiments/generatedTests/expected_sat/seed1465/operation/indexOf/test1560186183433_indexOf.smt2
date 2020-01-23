(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun result () Int)
(declare-fun offset () Int)
(declare-fun t () String)
(declare-fun s () String)
(assert
 (= (str.indexof s t offset) result))
(check-sat)

(get-value (s t offset result ))
(get-info :reason-unknown)

;s = 
;t = 
;offset = -1
;result = -1


