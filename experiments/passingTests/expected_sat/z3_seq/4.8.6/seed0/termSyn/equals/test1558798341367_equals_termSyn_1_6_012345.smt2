(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let (($x725 (str.contains tmp_str0 tmp_str0)))
 (let ((?x1509 (int.to.str tmp_int1)))
 (let ((?x2680 (str.at tmp_str0 tmp_int1)))
 (let (($x1890 (= ?x2680 ?x1509)))
 (= $x1890 $x725))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


;actual status: sat
;((tmp_str0 "")
; (tmp_int1 (- 1)))

;model:
;Int tmp_int1 = -1
;String tmp_str0 = 
