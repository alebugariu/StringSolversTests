(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.substr tmp_str0 2 2) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;tmp_str3 = 
;actual status: sat
