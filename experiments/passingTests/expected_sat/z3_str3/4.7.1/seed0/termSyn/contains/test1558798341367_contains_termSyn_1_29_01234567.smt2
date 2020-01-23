(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let (($x1586 (= tmp_str0 tmp_str0)))
 (let ((?x1278 (str.substr tmp_str0 tmp_int4 tmp_int4)))
 (let ((?x1634 (str.++ tmp_str0 tmp_str0)))
 (let (($x855 (str.contains ?x1634 ?x1278)))
 (= $x855 $x1586))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1


;actual status: sat

;model:
;Int tmp_int4 = -1
;String tmp_str0 = aaaaaaaz
