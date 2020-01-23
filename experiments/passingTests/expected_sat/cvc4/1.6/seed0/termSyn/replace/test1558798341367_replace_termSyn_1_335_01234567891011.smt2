(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str26 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x1101 (str.++ tmp_str0 tmp_str26)))
 (let ((?x1263 (str.substr tmp_str0 tmp_int5 tmp_int5)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1818 (str.replace ?x130 ?x1263 ?x1263)))
 (= ?x1818 ?x1101))))))
(check-sat)

(get-value (tmp_str0 tmp_int5 tmp_str26 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_str26 = 


;actual status: sat

;model:
;Int tmp_int5 = 0
;String tmp_str0 = 
;String tmp_str26 = 
