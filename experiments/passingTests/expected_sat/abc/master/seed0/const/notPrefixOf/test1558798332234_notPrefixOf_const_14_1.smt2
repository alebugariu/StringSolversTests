(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.prefixof "\x07" tmp_str1) false))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 
;actual status: sat
