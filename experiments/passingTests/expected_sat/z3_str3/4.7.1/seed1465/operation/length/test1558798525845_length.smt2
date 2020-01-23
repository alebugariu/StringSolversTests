(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun result () Int)
(declare-fun s () String)
(assert
 (= (str.len s) result))
(check-sat)

(get-value (s result ))
(get-info :reason-unknown)

;s = 
;result = 0


;actual status: sat

;model:
;Int result = 2
;String s = aA
