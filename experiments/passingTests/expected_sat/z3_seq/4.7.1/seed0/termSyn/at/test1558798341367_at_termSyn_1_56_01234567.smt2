(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2692 (str.replace tmp_str0 tmp_str0 tmp_str12)))
 (let ((?x1622 (str.to.int tmp_str0)))
 (let ((?x2060 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1263 (str.at ?x2060 ?x1622)))
 (= ?x1263 ?x2692))))))
(check-sat)

(get-value (tmp_str0 tmp_str12 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str12 = 


;actual status: sat

;model:
;String tmp_str0 = <\x00
;String tmp_str12 = 
