(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str24 () String)
(declare-fun tmp_int9 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace (str.replace tmp_str0 tmp_str0 tmp_str0) (str.replace tmp_str0 tmp_str0 tmp_str0) (str.substr tmp_str0 tmp_int9 tmp_int9)) (str.++ tmp_str24 tmp_str24)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int9 = -1
;tmp_str24 = 
