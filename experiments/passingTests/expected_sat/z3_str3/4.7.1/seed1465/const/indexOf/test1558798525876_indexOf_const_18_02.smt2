(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2122 (str.indexof tmp_str0 "0" tmp_int2)))
 (= ?x2122 (- 1))))
(check-sat)

(get-value (tmp_str0 tmp_int2 ))
(get-info :reason-unknown)

;tmp_str0 = 
;tmp_int2 = -1


;actual status: sat

;model:
;Int tmp_int2 = -1
;String tmp_str0 = aC
