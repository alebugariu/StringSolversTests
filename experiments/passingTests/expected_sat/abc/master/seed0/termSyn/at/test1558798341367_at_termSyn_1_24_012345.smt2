(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str10 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.++ tmp_str0 tmp_str0) (str.to.int tmp_str0)) (str.++ tmp_str10 tmp_str10)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str10 = 
;actual status: sat
