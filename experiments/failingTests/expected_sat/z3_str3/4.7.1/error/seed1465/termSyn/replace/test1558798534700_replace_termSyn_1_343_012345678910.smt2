(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str22 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x448 (str.replace tmp_str0 tmp_str22 tmp_str0)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x816 (str.at tmp_str0 tmp_int1)))
 (let ((?x1363 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x2770 (str.replace ?x1363 ?x816 ?x2008)))
 (= ?x2770 ?x448)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str22 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str22 = 


;actual status: not_implemented
