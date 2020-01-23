(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x2727 (str.len tmp_str2)))
 (let ((?x1186 (int.to.str tmp_int0)))
 (let ((?x189 (str.substr ?x1186 ?x2727 ?x2727)))
 (= ?x189 (str.replace tmp_str2 tmp_str2 tmp_str12))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str12 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str12 = 


;actual status: sat

;model:
;Int tmp_int0 = 11
;String tmp_str2 = \x00
;String tmp_str12 = 1
