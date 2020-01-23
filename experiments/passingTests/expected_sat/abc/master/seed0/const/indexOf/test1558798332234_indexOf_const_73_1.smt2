(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.indexof "\x07" tmp_str1 0) 0))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 
;actual status: sat
