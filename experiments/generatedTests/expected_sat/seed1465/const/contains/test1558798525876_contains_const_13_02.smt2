(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_bool2 () Bool)
(assert
 (= (str.contains tmp_str0 "0") tmp_bool2))
(check-sat)

(get-value (tmp_str0 tmp_bool2 ))
(get-info :reason-unknown)

;tmp_str0 = 0
;tmp_bool2 = true


