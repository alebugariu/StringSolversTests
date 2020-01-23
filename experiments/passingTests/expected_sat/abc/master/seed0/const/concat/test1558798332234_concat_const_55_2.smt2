(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.++ "0" "2") tmp_str2))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 02
;actual status: sat
