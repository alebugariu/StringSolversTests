(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x503 (int.to.str tmp_int5)))
 (let ((?x2497 (str.at tmp_str0 tmp_int5)))
 (let ((?x1264 (str.replace ?x2321 ?x2497 ?x503)))
 (= ?x1264 ?x2321))))))
(check-sat)

(get-value (tmp_str0 tmp_int5 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1


