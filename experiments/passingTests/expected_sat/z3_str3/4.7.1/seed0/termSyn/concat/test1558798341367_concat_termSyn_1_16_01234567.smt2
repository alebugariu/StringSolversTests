(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str14 () String)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x522 (str.++ tmp_str14 tmp_str14)))
 (let ((?x2623 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x69 (str.at tmp_str0 tmp_int1)))
 (let ((?x981 (str.++ ?x69 ?x2623)))
 (= ?x981 ?x522))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str14 = 


;actual status: sat

;model:
;Int tmp_int1 = 8
;String tmp_str0 = aaaaaaateee
;String tmp_str14 = ee
