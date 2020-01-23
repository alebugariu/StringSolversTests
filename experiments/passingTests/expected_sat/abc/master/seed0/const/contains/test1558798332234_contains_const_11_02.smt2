(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_bool2 () Bool)
(assert
 (= (str.contains tmp_str0 "-1") tmp_bool2))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = -1
;tmp_bool2 = true
;actual status: sat
