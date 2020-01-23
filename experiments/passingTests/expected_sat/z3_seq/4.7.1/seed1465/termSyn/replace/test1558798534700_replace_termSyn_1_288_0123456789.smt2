(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int7 () Int)
(assert
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2218 (int.to.str tmp_int7)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2589 (str.replace ?x2321 ?x2008 ?x2218)))
 (= ?x2589 ?x2321))))))
(check-sat)

(get-value (tmp_str0 tmp_int7 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int7 = -1


;actual status: sat

;model:
;String tmp_str0 = \x00\x00
;Int tmp_int7 = 4
