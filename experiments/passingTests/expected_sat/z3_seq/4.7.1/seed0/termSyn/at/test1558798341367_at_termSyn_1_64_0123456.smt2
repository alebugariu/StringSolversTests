(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x1569 (str.++ tmp_str12 tmp_str12)))
 (let ((?x322 (str.len tmp_str0)))
 (let ((?x2623 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x2611 (str.at ?x2623 ?x322)))
 (= ?x2611 ?x1569))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str12 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str12 = 


;actual status: sat

;model:
;Int tmp_int1 = -1
;String tmp_str0 = \x00
;String tmp_str12 = 
