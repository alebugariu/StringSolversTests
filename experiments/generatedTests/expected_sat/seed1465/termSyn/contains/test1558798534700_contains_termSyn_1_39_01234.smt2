(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str9 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let (($x919 (str.contains tmp_str9 tmp_str9)))
 (let ((?x348 (int.to.str tmp_int0)))
 (let (($x92 (str.contains ?x348 ?x348)))
 (= $x92 $x919)))))
(check-sat)

(get-value (tmp_int0 tmp_str9 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str9 = a


