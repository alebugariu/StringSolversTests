(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str14 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x1524 (str.replace tmp_str0 tmp_str0 tmp_str14)))
 (let ((?x1907 (str.to.int tmp_str0)))
 (let ((?x545 (str.len tmp_str0)))
 (let ((?x816 (str.at tmp_str0 tmp_int1)))
 (let ((?x1797 (str.substr ?x816 ?x545 ?x1907)))
 (= ?x1797 ?x1524)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str14 = 


