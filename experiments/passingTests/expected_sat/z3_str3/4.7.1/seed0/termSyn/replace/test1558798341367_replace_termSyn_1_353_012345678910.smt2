(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str22 () String)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2468 (str.++ tmp_str22 tmp_str22)))
 (let ((?x2040 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x972 (str.at tmp_str0 tmp_int1)))
 (let ((?x2524 (str.replace ?x2040 ?x972 ?x2040)))
 (= ?x2524 ?x2468))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str22 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str22 = 


;actual status: sat

;model:
;Int tmp_int1 = 0
;String tmp_str0 = Cac
;String tmp_str22 = 
