(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str20 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x1542 (str.++ tmp_str2 tmp_str2)))
 (let ((?x1071 (str.substr tmp_str2 tmp_int0 tmp_int0)))
 (let ((?x229 (int.to.str tmp_int0)))
 (let ((?x735 (str.replace ?x229 ?x1071 ?x1542)))
 (= ?x735 (str.replace tmp_str2 tmp_str20 tmp_str2)))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str20 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str20 = 


;actual status: sat
;((tmp_int0 (- 1))
; (tmp_str2 "")
; (tmp_str20 ""))

;model:
;Int tmp_int0 = -1
;String tmp_str20 = 
;String tmp_str2 = 
