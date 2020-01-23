(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str22 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x878 (str.replace tmp_str2 tmp_str2 tmp_str2)))
 (let ((?x1071 (str.substr tmp_str2 tmp_int0 tmp_int0)))
 (let ((?x229 (int.to.str tmp_int0)))
 (let ((?x2522 (str.replace ?x229 ?x1071 ?x878)))
 (= ?x2522 (str.++ tmp_str2 tmp_str22)))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str22 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str22 = 


;actual status: sat

;model:
;Int tmp_int0 = -1
;String tmp_str2 = \x00
;String tmp_str22 = 
