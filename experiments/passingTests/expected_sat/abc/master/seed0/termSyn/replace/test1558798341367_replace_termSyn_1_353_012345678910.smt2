(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str22 () String)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace (str.substr tmp_str0 tmp_int1 tmp_int1) (str.at tmp_str0 tmp_int1) (str.substr tmp_str0 tmp_int1 tmp_int1)) (str.++ tmp_str22 tmp_str22)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str22 = 
;actual status: sat
