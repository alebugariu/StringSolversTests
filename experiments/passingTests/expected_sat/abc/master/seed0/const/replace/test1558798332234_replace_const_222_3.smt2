(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(assert
 (= (str.replace "\x07" "\x07" "0") tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str3 = 0
;actual status: sat
