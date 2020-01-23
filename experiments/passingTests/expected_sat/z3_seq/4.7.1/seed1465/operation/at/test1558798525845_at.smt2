(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun result () String)
(declare-fun offset () Int)
(declare-fun s () String)
(assert
 (= (str.at s offset) result))
(check-sat)

(get-value (s offset result ))
(get-info :reason-unknown)

;s = 
;offset = -1
;result = 


;actual status: sat

;model:
;String result = \x00
;String s = \x00
;Int offset = 0
