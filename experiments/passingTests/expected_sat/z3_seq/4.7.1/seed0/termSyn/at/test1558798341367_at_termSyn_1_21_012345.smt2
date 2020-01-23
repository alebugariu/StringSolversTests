(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x322 (str.len tmp_str0)))
 (let ((?x2209 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2780 (str.at ?x2209 ?x322)))
 (= ?x2780 (str.++ tmp_str0 tmp_str12))))))
(check-sat)

(get-value (tmp_str0 tmp_str12 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str12 = 


;actual status: sat

;model:
;String tmp_str0 = 
;String tmp_str12 = 
