(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str22 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x2480 (str.++ tmp_str0 tmp_str22)))
 (let ((?x1273 (int.to.str tmp_int5)))
 (let ((?x1263 (str.substr tmp_str0 tmp_int5 tmp_int5)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x675 (str.replace ?x130 ?x1263 ?x1273)))
 (= ?x675 ?x2480)))))))
(check-sat)

(get-value (tmp_str0 tmp_int5 tmp_str22 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_str22 = 


;actual status: sat
;((tmp_str0 "")
; (tmp_int5 (- 1))
; (tmp_str22 ""))

;model:
;Int tmp_int5 = -1
;String tmp_str0 = 
;String tmp_str22 = 
