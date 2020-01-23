(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str10 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2803 (str.replace tmp_str0 tmp_str0 tmp_str10)))
 (let ((?x1622 (str.to.int tmp_str0)))
 (let ((?x2209 (str.++ tmp_str0 tmp_str0)))
 (let ((?x197 (str.at ?x2209 ?x1622)))
 (= ?x197 ?x2803))))))
(check-sat)

(get-value (tmp_str0 tmp_str10 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str10 = 


;actual status: sat

;model:
;String tmp_str0 = 0
;String tmp_str10 = 0
