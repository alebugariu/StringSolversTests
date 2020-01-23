(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int5 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1301 (str.indexof tmp_str0 tmp_str0 tmp_int5)))
 (let ((?x2463 (str.at tmp_str0 tmp_int5)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.indexof ?x130 ?x2463 ?x1301) ?x1301)))))
(check-sat)

(get-value (tmp_str0 tmp_int5 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1


