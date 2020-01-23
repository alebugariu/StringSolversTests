(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let (($x1586 (= tmp_str0 tmp_str0)))
 (let ((?x735 (str.at tmp_str0 tmp_int4)))
 (let ((?x1634 (str.++ tmp_str0 tmp_str0)))
 (let (($x2522 (str.contains ?x1634 ?x735)))
 (= $x2522 $x1586))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1


