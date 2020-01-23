(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str14 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x2101 (str.replace tmp_str2 tmp_str2 tmp_str14)))
 (let ((?x229 (int.to.str tmp_int0)))
 (let ((?x1542 (str.++ tmp_str2 tmp_str2)))
 (let ((?x321 (str.replace ?x229 ?x1542 ?x229)))
 (= ?x321 ?x2101))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str14 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str14 = 


;actual status: sat

;model:
;Int tmp_int0 = -1
;String tmp_str2 = 
;String tmp_str14 = 
