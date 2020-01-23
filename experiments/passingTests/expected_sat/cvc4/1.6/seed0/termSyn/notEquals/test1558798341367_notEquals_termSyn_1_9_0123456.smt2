(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str14 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let (($x1982 (= tmp_str0 tmp_str14)))
 (let ((?x735 (str.at tmp_str0 tmp_int4)))
 (let ((?x1634 (str.++ tmp_str0 tmp_str0)))
 (let (($x1743 (= ?x1634 ?x735)))
 (= $x1743 $x1982))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_str14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str14 = 


;actual status: sat

;model:
;Int tmp_int4 = -1
;String tmp_str0 = A
;String tmp_str14 = 
