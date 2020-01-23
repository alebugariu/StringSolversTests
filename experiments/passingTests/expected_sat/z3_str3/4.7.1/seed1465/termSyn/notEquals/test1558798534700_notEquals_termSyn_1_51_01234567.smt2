(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str16 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let (($x1463 (str.contains tmp_str16 tmp_str0)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2480 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let (($x1781 (= ?x2480 ?x2008)))
 (= $x1781 $x1463))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str16 = 


;actual status: sat

;model:
;Int tmp_int1 = -1
;String tmp_str0 = aaaaaaaaak
;String tmp_str16 = aa
