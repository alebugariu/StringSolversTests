(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2524 (str.indexof tmp_str0 "2" tmp_int2)))
 (= ?x2524 0)))
(check-sat)

(get-value (tmp_str0 tmp_int2 ))
(get-info :reason-unknown)

;tmp_str0 = 2
;tmp_int2 = 0


;actual status: incorrect_model

;model:
;Int tmp_int2 = 6
;String tmp_str0 = v2aaaZ2aac2aw
