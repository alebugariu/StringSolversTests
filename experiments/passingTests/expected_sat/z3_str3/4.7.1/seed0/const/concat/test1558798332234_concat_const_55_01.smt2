(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x188 (str.++ tmp_str0 tmp_str1)))
 (= ?x188 "02")))
(check-sat)

(get-value (tmp_str0 tmp_str1 ))
(get-info :reason-unknown)

;tmp_str0 = 0
;tmp_str1 = 2


;actual status: sat

;model:
;String tmp_str1 = 2
;String tmp_str0 = 0
