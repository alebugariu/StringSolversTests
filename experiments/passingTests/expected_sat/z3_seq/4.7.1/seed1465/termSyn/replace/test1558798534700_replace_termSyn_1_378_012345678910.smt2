(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str22 () String)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1857 (str.++ tmp_str22 tmp_str22)))
 (let ((?x1363 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x919 (str.replace ?x1363 ?x2008 ?x1363)))
 (= ?x919 ?x1857))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str22 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str22 = 


;actual status: sat

;model:
;Int tmp_int1 = 5
;String tmp_str0 = \x00\x00\x00\x00\x00\x00\x00\x00\x00
;String tmp_str22 = \x00\x00
