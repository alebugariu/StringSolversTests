(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.substr "a" tmp_int1 (- 1)) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_int1 = -1
;tmp_str3 = 
;actual status: sat
