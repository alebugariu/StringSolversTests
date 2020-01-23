(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x229 (str.to.int tmp_str0)))
 (let ((?x972 (str.len tmp_str0)))
 (let ((?x2052 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1716 (str.indexof ?x2052 ?x2052 ?x972)))
 (= ?x1716 ?x229))))))
(check-sat)

(get-value (tmp_str0 ))
(get-info :reason-unknown)

;tmp_str0 = a


;actual status: sat

;model:
;String tmp_str0 = <\x00
