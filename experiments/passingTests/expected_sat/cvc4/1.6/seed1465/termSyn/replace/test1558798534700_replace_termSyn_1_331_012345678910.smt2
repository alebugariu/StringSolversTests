(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x503 (int.to.str tmp_int5)))
 (let ((?x869 (str.substr tmp_str0 tmp_int5 tmp_int5)))
 (let ((?x1209 (str.replace ?x2321 ?x869 ?x503)))
 (= ?x1209 ?x2321))))))
(check-sat)

(get-value (tmp_str0 tmp_int5 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1


;actual status: sat

;model:
;Int tmp_int5 = -1
;String tmp_str0 = 
