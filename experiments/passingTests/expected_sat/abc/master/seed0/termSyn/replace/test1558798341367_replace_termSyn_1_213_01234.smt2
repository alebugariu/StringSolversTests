(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.replace (int.to.str tmp_int0) (int.to.str tmp_int0) (int.to.str tmp_int0)) (int.to.str tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;actual status: sat
