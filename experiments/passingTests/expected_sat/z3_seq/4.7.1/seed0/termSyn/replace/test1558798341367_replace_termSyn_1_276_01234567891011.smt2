(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str24 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x1105 (str.replace tmp_str0 tmp_str24 tmp_str0)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2463 (str.at tmp_str0 tmp_int5)))
 (let ((?x568 (str.replace ?x130 ?x2463 ?x130)))
 (= ?x568 ?x1105))))))
(check-sat)

(get-value (tmp_str0 tmp_int5 tmp_str24 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_str24 = 


;actual status: sat

;model:
;Int tmp_int5 = -1
;String tmp_str0 = \x00
;String tmp_str24 = 
