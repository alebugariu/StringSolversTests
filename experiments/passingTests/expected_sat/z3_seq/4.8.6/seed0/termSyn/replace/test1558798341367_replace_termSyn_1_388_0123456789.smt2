(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str20 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x2001 (str.replace tmp_str0 tmp_str20 tmp_str0)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x129 (int.to.str tmp_int1)))
 (let ((?x2040 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x1123 (str.replace ?x2040 ?x129 ?x118)))
 (= ?x1123 ?x2001)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str20 = 


;actual status: sat
;((tmp_str0 "")
; (tmp_int1 (- 2))
; (tmp_str20 ""))

;model:
;Int tmp_int1 = -2
;String tmp_str20 = 
;String tmp_str0 = 
