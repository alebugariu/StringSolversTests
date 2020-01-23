(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str22 () String)
(declare-fun tmp_int9 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1857 (str.++ tmp_str22 tmp_str22)))
 (let ((?x2607 (str.at tmp_str0 tmp_int9)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2521 (str.replace ?x2321 ?x2321 ?x2607)))
 (= ?x2521 ?x1857))))))
(check-sat)

(get-value (tmp_str0 tmp_int9 tmp_str22 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int9 = -1
;tmp_str22 = 


;actual status: sat

;model:
;String tmp_str0 = 
;Int tmp_int9 = -1
;String tmp_str22 = 
