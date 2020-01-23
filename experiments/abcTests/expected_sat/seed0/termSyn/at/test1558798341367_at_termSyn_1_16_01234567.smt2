(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str14 () String)
(declare-fun tmp_int5 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.++ tmp_str0 tmp_str0) (str.indexof tmp_str0 tmp_str0 tmp_int5)) (str.++ tmp_str14 tmp_str14)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_str14 = 
