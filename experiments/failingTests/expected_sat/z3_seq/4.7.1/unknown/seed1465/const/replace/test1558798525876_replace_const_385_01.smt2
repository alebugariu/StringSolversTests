(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1631 (str.replace tmp_str0 tmp_str1 """a""")))
 (= ?x1631 """a""0")))
(check-sat)

(get-value (tmp_str0 tmp_str1 ))
(get-info :reason-unknown)

;tmp_str0 = 0
;tmp_str1 = 


;actual status: unknown
