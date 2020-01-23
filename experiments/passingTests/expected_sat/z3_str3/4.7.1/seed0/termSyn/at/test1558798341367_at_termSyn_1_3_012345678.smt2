(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str14 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x2119 (str.indexof tmp_str0 tmp_str0 tmp_int1)))
 (let ((?x69 (str.at tmp_str0 tmp_int1)))
 (let ((?x2608 (str.at ?x69 ?x2119)))
 (= ?x2608 (str.replace tmp_str0 tmp_str0 tmp_str14))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str14 = 


;actual status: sat

;model:
;Int tmp_int1 = 0
;String tmp_str0 = eaaaasu
;String tmp_str14 = e
