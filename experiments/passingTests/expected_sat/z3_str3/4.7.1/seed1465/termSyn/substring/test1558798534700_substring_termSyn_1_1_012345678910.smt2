(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str22 () String)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1857 (str.++ tmp_str22 tmp_str22)))
 (let ((?x40 (str.indexof tmp_str0 tmp_str0 tmp_int1)))
 (let ((?x816 (str.at tmp_str0 tmp_int1)))
 (let ((?x2318 (str.substr ?x816 ?x40 ?x40)))
 (= ?x2318 ?x1857))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str22 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str22 = 


;actual status: sat

;model:
;Int tmp_int1 = 0
;String tmp_str0 = wE
;String tmp_str22 = 
