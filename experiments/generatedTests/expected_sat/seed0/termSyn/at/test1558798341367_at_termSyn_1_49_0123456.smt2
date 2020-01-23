(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1569 (str.++ tmp_str12 tmp_str12)))
 (let ((?x322 (str.len tmp_str0)))
 (let ((?x2060 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x50 (str.at ?x2060 ?x322)))
 (= ?x50 ?x1569))))))
(check-sat)

(get-value (tmp_str0 tmp_str12 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str12 = 


