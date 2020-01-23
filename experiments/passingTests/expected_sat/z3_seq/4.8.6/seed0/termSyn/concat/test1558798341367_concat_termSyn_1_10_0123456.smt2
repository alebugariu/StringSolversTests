(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str10 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x2803 (str.replace tmp_str0 tmp_str0 tmp_str10)))
 (let ((?x92 (int.to.str tmp_int1)))
 (let ((?x69 (str.at tmp_str0 tmp_int1)))
 (let ((?x2494 (str.++ ?x69 ?x92)))
 (= ?x2494 ?x2803))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str10 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str10 = 


;actual status: sat
;((tmp_str0 "\x00")
; (tmp_int1 (- 2))
; (tmp_str10 ""))

;model:
;Int tmp_int1 = -2
;String tmp_str0 = \x00
;String tmp_str10 = 
