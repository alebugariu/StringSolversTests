(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str18 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x154 (str.replace tmp_str0 tmp_str0 tmp_str18)))
 (let ((?x2430 (int.to.str tmp_int1)))
 (let ((?x2649 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2321 (str.at tmp_str0 tmp_int1)))
 (let ((?x1481 (str.replace ?x2321 ?x2649 ?x2430)))
 (= ?x1481 ?x154)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str18 = 


;actual status: sat

;model:
;Int tmp_int1 = -1
;String tmp_str18 = 
;String tmp_str0 = 
