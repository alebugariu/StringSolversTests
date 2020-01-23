(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str14 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let ((?x2258 (int.to.str tmp_int4)))
 (let ((?x2060 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x570 (str.++ ?x2060 ?x2258)))
 (= ?x570 (str.++ tmp_str0 tmp_str14))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_str14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str14 = 


