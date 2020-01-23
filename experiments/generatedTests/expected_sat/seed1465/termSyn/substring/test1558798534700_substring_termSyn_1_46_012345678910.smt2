(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str22 () String)
(declare-fun tmp_int5 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1857 (str.++ tmp_str22 tmp_str22)))
 (let ((?x2085 (str.indexof tmp_str0 tmp_str0 tmp_int5)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2251 (str.substr ?x2008 ?x2085 ?x2085)))
 (= ?x2251 ?x1857))))))
(check-sat)

(get-value (tmp_str0 tmp_int5 tmp_str22 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_str22 = 


