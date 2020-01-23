(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str13 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x1186 (int.to.str tmp_int0)))
 (let ((?x415 (str.replace ?x1186 ?x1186 ?x1186)))
 (= ?x415 (str.replace tmp_str13 tmp_str13 tmp_str12)))))
(check-sat)

(get-value (tmp_int0 tmp_str13 tmp_str12 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str13 = a
;tmp_str12 = 


;actual status: sat

;model:
;Int tmp_int0 = 4
;String tmp_str13 = 
;String tmp_str12 = 4
