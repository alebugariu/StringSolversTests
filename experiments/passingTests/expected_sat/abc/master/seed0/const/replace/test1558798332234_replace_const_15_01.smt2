(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 tmp_str1 "2") ""))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;tmp_str1 = "a"
;actual status: sat
