(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (= tmp_str0 "a") false))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;actual status: sat
