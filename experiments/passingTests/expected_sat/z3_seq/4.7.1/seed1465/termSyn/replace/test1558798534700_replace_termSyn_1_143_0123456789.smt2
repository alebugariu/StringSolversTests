(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str22 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int8 () Int)
(assert
 (let ((?x1102 (str.++ tmp_str0 tmp_str22)))
 (let ((?x2356 (str.at tmp_str0 tmp_int8)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x1589 (str.replace ?x2008 ?x2321 ?x2356)))
 (= ?x1589 ?x1102)))))))
(check-sat)

(get-value (tmp_str0 tmp_int8 tmp_str22 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int8 = -1
;tmp_str22 = 


;actual status: sat

;model:
;String tmp_str0 = \x00\x00\x00\x00\x00\x00\x00\x00\x00
;String tmp_str22 = \x00
;Int tmp_int8 = 1
