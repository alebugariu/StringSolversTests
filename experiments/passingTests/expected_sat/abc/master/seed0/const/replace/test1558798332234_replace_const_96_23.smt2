(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "\"a\"" "\n" tmp_str2) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;tmp_str3 = "a"
;actual status: sat
