(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str10 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2339 (str.++ tmp_str10 tmp_str10)))
 (let ((?x92 (str.to.int tmp_str0)))
 (let ((?x512 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2503 (str.at ?x512 ?x92)))
 (= ?x2503 ?x2339))))))
(check-sat)

(get-value (tmp_str0 tmp_str10 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str10 = 


;actual status: sat

;model:
;String tmp_str0 = 
;String tmp_str10 = 
