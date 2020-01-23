(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str10 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x2339 (str.++ tmp_str10 tmp_str10)))
 (let ((?x92 (str.to.int tmp_str0)))
 (let ((?x1466 (str.at tmp_str0 tmp_int1)))
 (let ((?x2515 (str.at ?x1466 ?x92)))
 (= ?x2515 ?x2339))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str10 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str10 = 


;actual status: sat

;model:
;Int tmp_int1 = 0
;String tmp_str0 = 
;String tmp_str10 = 
