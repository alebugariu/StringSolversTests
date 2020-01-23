(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_bool2 () Bool)
(assert
 (= (= tmp_str0 "\x07") tmp_bool2))
(check-sat)

(get-value (tmp_str0 tmp_bool2 ))
(get-info :reason-unknown)

;tmp_str0 = 
;tmp_bool2 = true


;actual status: sat

;model:
;Bool tmp_bool2 = false
;String tmp_str0 = 
