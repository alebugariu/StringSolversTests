(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1723 (str.++ tmp_str16 tmp_str16)))
 (let ((?x506 (str.indexof tmp_str0 tmp_str0 tmp_int1)))
 (let ((?x2823 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x1264 (str.at ?x2823 ?x506)))
 (= ?x1264 ?x1723))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str16 = 


;actual status: sat

;model:
;Int tmp_int1 = -2
;String tmp_str0 = 
;String tmp_str16 = 
