(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (str.++ tmp_str0 "2") "\x072"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;actual status: sat
