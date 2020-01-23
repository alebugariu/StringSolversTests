(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.++ tmp_str0 tmp_str1) "a0"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str1 = 0
;actual status: sat
