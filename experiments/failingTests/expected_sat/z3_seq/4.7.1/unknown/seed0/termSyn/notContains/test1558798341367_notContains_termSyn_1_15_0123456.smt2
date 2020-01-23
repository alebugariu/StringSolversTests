(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str14 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let (($x734 (str.contains tmp_str14 tmp_str2)))
 (let ((?x903 (str.replace tmp_str2 tmp_str2 tmp_str2)))
 (let ((?x1035 (int.to.str tmp_int0)))
 (let (($x1482 (str.contains ?x1035 ?x903)))
 (= $x1482 $x734))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str14 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str14 = 


;actual status: unknown
