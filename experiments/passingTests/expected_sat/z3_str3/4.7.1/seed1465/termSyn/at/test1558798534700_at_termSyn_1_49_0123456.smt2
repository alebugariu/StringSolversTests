(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1186 (str.++ tmp_str12 tmp_str12)))
 (let ((?x1459 (str.len tmp_str0)))
 (let ((?x302 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x381 (str.at ?x302 ?x1459)))
 (= ?x381 ?x1186))))))
(check-sat)

(get-value (tmp_str0 tmp_str12 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str12 = 


;actual status: sat

;model:
;String tmp_str0 = aa
;String tmp_str12 = 
