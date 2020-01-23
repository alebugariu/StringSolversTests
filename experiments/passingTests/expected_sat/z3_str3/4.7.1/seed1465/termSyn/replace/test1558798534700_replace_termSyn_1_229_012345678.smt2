(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x305 (str.at tmp_str2 tmp_int0)))
 (let ((?x206 (str.++ tmp_str2 tmp_str2)))
 (let ((?x864 (str.replace tmp_str2 tmp_str2 tmp_str2)))
 (let ((?x1186 (int.to.str tmp_int0)))
 (= (str.replace ?x1186 ?x864 ?x206) ?x305))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a


;actual status: sat

;model:
;Int tmp_int0 = 3
;String tmp_str2 = aac3aaaaaaaaaav
