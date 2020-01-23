(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str18 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int7 () Int)
(assert
 (let ((?x660 (str.replace tmp_str0 tmp_str0 tmp_str18)))
 (let ((?x1687 (str.indexof tmp_str0 tmp_str0 tmp_int7)))
 (let ((?x1081 (str.to.int tmp_str0)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x669 (str.substr ?x118 ?x1081 ?x1687)))
 (= ?x669 ?x660)))))))
(check-sat)

(get-value (tmp_str0 tmp_int7 tmp_str18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int7 = -1
;tmp_str18 = 


;actual status: sat

;model:
;String tmp_str18 = 
;String tmp_str0 = 
;Int tmp_int7 = 1
