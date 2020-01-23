(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x660 (str.replace tmp_str0 "" tmp_str2)))
 (= ?x660 "0")))
(check-sat)

(get-value (tmp_str0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_str0 = 
;tmp_str2 = 0


;actual status: sat

;model:
;String tmp_str2 = 0
;String tmp_str0 = 
