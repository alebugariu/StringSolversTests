(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int3 () Int)
(assert
 (let (($x16 (= tmp_str0 tmp_str0)))
 (let ((?x816 (int.to.str tmp_int3)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let (($x1334 (str.contains ?x2008 ?x816)))
 (= $x1334 $x16))))))
(check-sat)

(get-value (tmp_str0 tmp_int3 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int3 = -1


;actual status: sat

;model:
;Int tmp_int3 = 52
;String tmp_str0 = 52
