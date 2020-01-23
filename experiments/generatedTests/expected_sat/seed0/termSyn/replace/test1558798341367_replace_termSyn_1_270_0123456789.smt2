(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str22 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x2480 (str.++ tmp_str0 tmp_str22)))
 (let ((?x2463 (str.at tmp_str0 tmp_int5)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x736 (str.replace ?x130 ?x2463 ?x2463)))
 (= ?x736 ?x2480))))))
(check-sat)

(get-value (tmp_str0 tmp_int5 tmp_str22 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_str22 = 


