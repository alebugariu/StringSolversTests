(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int18 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x1444 (str.substr tmp_str0 tmp_int5 tmp_int5)))
 (let ((?x2060 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.++ ?x2060 ?x1444) (str.at tmp_str0 tmp_int18)))))
(check-sat)

(get-value (tmp_str0 tmp_int5 tmp_int18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_int18 = 0


