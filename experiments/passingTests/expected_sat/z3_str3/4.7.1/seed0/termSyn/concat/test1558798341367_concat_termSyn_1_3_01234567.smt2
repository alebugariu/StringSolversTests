(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x2692 (str.replace tmp_str0 tmp_str0 tmp_str12)))
 (let ((?x69 (str.at tmp_str0 tmp_int1)))
 (let ((?x1509 (str.++ ?x69 ?x69)))
 (= ?x1509 ?x2692)))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str12 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str12 = 


;actual status: sat

;model:
;Int tmp_int1 = 1
;String tmp_str0 = ldB
;String tmp_str12 = dd
