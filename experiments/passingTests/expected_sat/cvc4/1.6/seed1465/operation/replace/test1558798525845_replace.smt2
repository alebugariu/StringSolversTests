(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun result () String)
(declare-fun u () String)
(declare-fun t () String)
(declare-fun s () String)
(assert
 (= (str.replace s t u) result))
(check-sat)

(get-value (s t u result ))
(get-info :reason-unknown)

;s = 
;t = 
;u = 
;result = 


;actual status: sat

;model:
;String result = 
;String s = 
;String t = 
;String u = 
