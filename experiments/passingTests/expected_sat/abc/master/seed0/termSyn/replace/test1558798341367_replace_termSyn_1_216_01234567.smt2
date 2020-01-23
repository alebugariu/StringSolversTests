(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int18 () Int)
(declare-fun tmp_str4 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.replace (int.to.str tmp_int0) (int.to.str tmp_int0) (str.replace tmp_str4 tmp_str4 tmp_str4)) (str.at tmp_str4 tmp_int18)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str4 = a
;tmp_int18 = 0
;actual status: sat
