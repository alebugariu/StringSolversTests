(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str24 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x486 (str.++ tmp_str0 tmp_str24)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x1548 (str.replace ?x2321 ?x2008 ?x2321)))
 (= ?x1548 ?x486))))))
(check-sat)

(get-value (tmp_str0 tmp_str24 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str24 = 


