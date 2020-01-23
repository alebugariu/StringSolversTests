(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str26 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x1003 (str.++ tmp_str0 tmp_str26)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1363 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x987 (str.replace ?x1363 ?x1363 ?x2321)))
 (= ?x987 ?x1003))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str26 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str26 = 


;actual status: sat

;model:
;Int tmp_int1 = 2
;String tmp_str0 = \x00\x00\x00
;String tmp_str26 = 
