(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str16 () String)
(assert
 (= (= (str.replace tmp_str0 tmp_str0 tmp_str0) (str.++ tmp_str0 tmp_str0)) (str.contains tmp_str16 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str16 = 
;actual status: sat
