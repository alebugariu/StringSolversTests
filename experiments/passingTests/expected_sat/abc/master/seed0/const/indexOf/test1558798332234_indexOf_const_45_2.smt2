(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(assert
 (= (str.indexof "\"a\"" "2" tmp_int2) (- 1)))
(check-sat)

(get-info :reason-unknown)

;tmp_int2 = -1
;actual status: sat
