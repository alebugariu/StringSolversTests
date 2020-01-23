(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let (($x1586 (= tmp_str0 tmp_str0)))
 (let ((?x1509 (int.to.str tmp_int1)))
 (let ((?x2680 (str.at tmp_str0 tmp_int1)))
 (let (($x1574 (str.contains ?x2680 ?x1509)))
 (= $x1574 $x1586))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


