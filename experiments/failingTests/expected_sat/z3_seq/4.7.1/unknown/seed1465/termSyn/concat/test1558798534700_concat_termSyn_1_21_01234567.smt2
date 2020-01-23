(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str14 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let ((?x682 (str.replace tmp_str0 tmp_str14 tmp_str0)))
 (let ((?x1387 (str.at tmp_str0 tmp_int4)))
 (let ((?x512 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2720 (str.++ ?x512 ?x1387)))
 (= ?x2720 ?x682))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_str14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str14 = 


;actual status: unknown
