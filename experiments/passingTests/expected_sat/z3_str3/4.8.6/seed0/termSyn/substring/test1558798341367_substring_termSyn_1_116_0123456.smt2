(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x2080 (str.replace tmp_str2 tmp_str2 tmp_str12)))
 (let ((?x2461 (str.to.int tmp_str2)))
 (let ((?x2299 (str.len tmp_str2)))
 (let ((?x229 (int.to.str tmp_int0)))
 (let ((?x1407 (str.substr ?x229 ?x2299 ?x2461)))
 (= ?x1407 ?x2080)))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str12 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str12 = 


;actual status: sat
;((tmp_int0 (- 7720))
; (tmp_str2 "")
; (tmp_str12 ""))

;model:
;Int tmp_int0 = -7720
;String tmp_str2 = 
;String tmp_str12 = 
