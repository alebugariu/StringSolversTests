(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str1 () String)
(declare-fun t1 () String)
(declare-fun t1_fresh () String)
(declare-fun tmp_str2 () String)
(declare-fun t () String)
(declare-fun s () String)
(assert (! 
 (let ((?x816 (str.replace t1 tmp_str1 tmp_str2)))
 (let (($x821 (= ?x816 t1_fresh)))
 (and $x821 (= (str.indexof t1 tmp_str1 0) (- 1))))) :named a1))
(assert (! 
 (let ((?x200 (str.++ t1_fresh s)))
 (= ?x200 t)) :named a2))
(assert (! 
 (let (($x1144 (str.suffixof s t)))
 (let (($x2431 (= $x1144 true)))
 (not $x2431))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t1 = NO VALUE
;tmp_str1 = NO VALUE
;tmp_str2 = NO VALUE
;t1_fresh = NO VALUE

;unsat core: a0 a2 

