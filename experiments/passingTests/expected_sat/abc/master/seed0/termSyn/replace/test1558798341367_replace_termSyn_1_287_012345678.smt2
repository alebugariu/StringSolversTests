(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str20 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int7 () Int)
(assert
 (= (str.replace (str.replace tmp_str0 tmp_str0 tmp_str0) (str.++ tmp_str0 tmp_str0) (int.to.str tmp_int7)) (str.++ tmp_str0 tmp_str20)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int7 = -1
;tmp_str20 = 
;actual status: sat
