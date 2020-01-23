(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str4 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x92 (str.to.int tmp_str0)))
 (let ((?x2795 (int.to.str ?x92)))
 (= ?x2795 (str.replace tmp_str0 tmp_str0 tmp_str4)))))
(check-sat)

(get-value (tmp_str0 tmp_str4 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str4 = 


