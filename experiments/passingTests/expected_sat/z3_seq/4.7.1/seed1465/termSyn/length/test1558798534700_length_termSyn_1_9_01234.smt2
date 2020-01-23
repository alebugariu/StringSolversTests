(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str9 () String)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2480 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x586 (str.len ?x2480)))
 (= ?x586 (str.len tmp_str9)))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str9 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str9 = 


;actual status: sat

;model:
;Int tmp_int1 = 2
;String tmp_str0 = \x00
;String tmp_str9 = 
